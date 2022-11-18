<?php

namespace App\Entity;

use Illuminate\Database\Eloquent\Model;

class MenuElement extends Model
{
    protected $table = 'menu_element';

    protected $primaryKey = 'menu_element_id';

    protected $fillable = [
        'menu_element_id',
        'menu_slug',
        'url',
        'title_show',
        'menu_level',
        'menu_image',
        'language',
        'created_at',
        'updated_at'
    ];

    public function updateMenuElement($menuSlug, $url, $titles, $menuLevels, $menuImages, $languages) {
        $this->where('menu_slug', $menuSlug)->delete();
        $countLanguage = Language::count();
        foreach($url as $id => $elementSlug) {
            $title = $titles[$id];
            $menuLevel = $menuLevels[($id / $countLanguage)];
            $menu_image = $menuImages[$id];
            $language = $languages[$id];

            $this->insert([
                'url' => $elementSlug,
                'menu_slug' => $menuSlug,
                'title_show' => $title,
                'menu_level' => $menuLevel,
                'menu_image' => $menu_image,
                'language' => $language
            ]);
        }
    }
    public static function showMenuElementPage($menuSlug, $classMenu, $isShowIcon = false) {
        $menuElements = static::where('menu_slug', $menuSlug)->orderBy('menu_element_id')->get();
        $countMenu =   static::where('menu_slug', $menuSlug)->count();
        $return = '<ul class="mainMenu '.$classMenu.'">';
        foreach($menuElements as $id => $element) {
            if ($element->menu_level == 1) {
                $return .= '<li class="itemMenu">';
                if ( ( ($id+1) < $countMenu) && ($menuElements[$id + 1]->menu_level > $element->menu_level) ) {
                    $return .= '<a href="'.$element->url.'" data-toggle="dropdown"><img src="'.$element->menu_image.'"  />'.$element->title_show.' <span class="caret"></span></a>';
                    $return .= '<ul class="dropdown-menu sub' . $element->menu_level . '">[sub_menu' . $element->menu_level . ']</ul>';

                } else {
                    $return .= '<a href="'.$element->url.'" ><img src="'.$element->menu_image.'"  />'.$element->title_show.' </a>';
                }
                $return .= '</li>';

                continue;
            }

            if ($element->menu_level > 1) {
                $menuLevel =  $element->menu_level;
                $levelStart = 2;
                while( $levelStart <= $menuLevel) {
                    $subMenu = '';
                    foreach ($menuElements as $idSub => $elementSub) {
                        if ($elementSub->menu_level == $levelStart) {
                            $subMenu .= '<li class="itemMenu">';
                            if ( ( ($id+1) < $countMenu) && ($menuElements[$idSub + 1]->menu_level > $elementSub->menu_level) ) {
                                $subMenu .= '<a href="'.$elementSub->url.'" data-toggle="dropdown"><img src="'.$elementSub->menu_image.'" />'.$elementSub->title_show.' <span class="caret"></span></a>';
                                $subMenu .= '<ul class=" dropdown-menu sub' . $elementSub->menu_level . '">[sub_menu' . $elementSub->menu_level . ']</ul>';
                            } else {
                                $subMenu .= '<a href="'.$elementSub->url.'" ><img src="'.$elementSub->menu_image.'"  />'.$elementSub->title_show.' </a>';
                            }
                            $subMenu .= '</li>';
                        }
                    }

                    $return = str_replace('[sub_menu'.($levelStart-1).']', $subMenu, $return);

                    $levelStart ++;
                }
            }
        }
        $return .= '</ul>';
        return $return;

    }
    public static function showMenuElementPage2($menuSlug, $classMenu, $isShowIcon = false) {
        $menuElement = static::where('menu_slug', $menuSlug)->orderBy('menu_element_id')->get();
        $countMenu =   static::where('menu_slug', $menuSlug)->count();
        $return = '<ul class="mainMenu '.$classMenu.'">';
        foreach($menuElement as $id => $element) {
            $return .= '<li class="itemMenu">';
            // het menu
            if (($id + 1) == $countMenu) {
                $return .= '<a href="'.$element->url.'">'.$element->title_show.'';
                if ($element->menu_level == 1 && $isShowIcon) {
                    $return .= '<img class="iconMenuMain" src="'.$element->menu_image.'" /></a>';
                }
				$return .='</a>';
                $return .= '</li>';
                $menuLevel = $element->menu_level;
                while($menuLevel  > 1) {
                    $return .= '</ul>';
                    $menuLevel --;
                    if ($menuLevel == 1) {
                        $return .= '</li>';
                    }
                }

                continue;
            }
            // cap menu sau lon hon menu trước
            if ($menuElement[$id + 1]->menu_level > $element->menu_level ){
                if ($menuElement[$id + 1]->menu_level == 2) {
                    $return .= '<a href="'.$element->url.'" data-toggle="dropdown"><i class="fa fa-bars" aria-hidden="true"></i> '.$element->title_show.' <i class="fa fa-sort" aria-hidden="true"></i></a>';
                } else {
                    $return .= '<a href="'.$element->url.'" data-toggle="dropdown">'.$element->title_show.' <i class="fa fa-caret-down" aria-hidden="true"></i></a>';
                }
                $return .= '<ul class="dropdown-menu subMenu'.$menuElement[$id + 1]->menu_level.'">';

                continue;
            }
            $return .= '<a href="'.$element->url.'">'.$element->title_show.'';
            if ($element->menu_level == 1 && $isShowIcon) {
                $return .= '<img class="iconMenuMain" src="'.$element->menu_image.'" /></a>';
            }
            
            if ($element->menu_level == 2 && $isShowIcon) {
                $return .= '<img class="iconMenu" src="'.$element->menu_image.'" />';
            }
            
			$return .='</a>';
            // cấp menu sau nhỏ hơn menu trước
            if ($menuElement[$id + 1]->menu_level < $menuElement[$id]->menu_level){
                $return .= '</ul></li>';

                continue;
            }
            $return .= '</li>';
        }
        $return .= '</ul>';

        return $return;
    }

    public static function showMenuPageArray($menuSlug) {
        try {
            $menuElements = static::where('menu_slug', $menuSlug)
                ->where('language', session('languageCurrent', 'vn'))
                ->orderBy('menu_element_id')->get();
            $menuInfor = array();
            foreach($menuElements as $id => $element) {
                if ($element->menu_level == 1) {
                    $subMenu = static::callSubMenuArray2($menuElements, $element->menu_level, $element->menu_element_id);
                    $menuInfor[] = array(
                        'url' => $element->url,
                        'title_show' => $element->title_show,
                        'image' => $element->menu_image,
                        'menu_id' => $element->menu_element_id,
                        'level' => $element->menu_level,
                        'children' => $subMenu
                    );
                }
            }

            return $menuInfor;
        } catch (\Exception $e) {
            echo "lỗi rồi";
        }
    }

    private static function callSubMenuArray2 ($menuElements, $menuLevel, $menuElementId) {
        $levelStart = $menuLevel + 1;
        $menuInfor = array();
        foreach ($menuElements as $idSub => $elementSub) {
            if ($elementSub->menu_level == $levelStart && ($elementSub->menu_element_id > $menuElementId)) {
                $subMenu = static::callSubMenuArray2($menuElements, $elementSub->menu_level, $elementSub->menu_element_id);;
                $menuInfor[] = array(
                    'url' => $elementSub->url,
                    'title_show' => $elementSub->title_show,
                    'image' => $elementSub->menu_image,
                    'menu_id' => $elementSub->menu_element_id,
                    'level' => $elementSub->menu_level,
                    'children' => $subMenu
                );

            }

            if ($elementSub->menu_level < $levelStart && ($elementSub->menu_element_id > $menuElementId) ) {
                break;
            }
        }

        return $menuInfor;
    }

    public static function showMenuElement($menuSlug) {
        $language = session('languageCurrent', 'vn');
        $menuElement = static::where('menu_slug', $menuSlug)
            ->where('language', $language)
            ->orderBy('menu_element_id')->get();

        return $menuElement;
    }

}
