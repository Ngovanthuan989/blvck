<?php
/**
 * Created by PhpStorm.
 * User: Nam Handsome
 * Date: 11/14/2017
 * Time: 3:35 PM
 */

namespace App\Http\Controllers\Site;

use App\Entity\MenuElement;
use Sitemap;

class SitemapsController extends SiteController
{
    public function index()
    {
        $menus = MenuElement::showMenuElement('menu-chinh');
        foreach ($menus as $menu) {
            Sitemap::addSitemap(asset($menu->url));
        }

        // Return the sitemap to the client.
        return Sitemap::index();
    }
}
