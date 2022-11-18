<?php
/**
 * Created by PhpStorm.
 * User: Nam Handsome
 * Date: 11/6/2017
 * Time: 2:15 PM
 */

namespace App\Ultility;


class Location
{
      private $locationMenu = array(
      	'menu-chinh' => 'menu chính',
         'menu-top-1' => 'menu trên cùng trái',
          'menu-top-2' => 'menu trên cùng phải',
          'menu-footer' => 'menu cuối trang',
          'category-home-left' => 'danh mục tin tức trang chủ bên trái',
          'category-home-center' => 'danh mục tin tức trang chủ ở giữa',
          'category-home-right' => 'danh mục tin tức trang chủ bên phải',

      );

      public function getLocationMenu() {
          return $this->locationMenu;
      }
}
