{**
 * 2007-2017 PrestaShop
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the Open Software License (OSL 3.0)
 * that is bundled with this package in the file LICENSE.txt.
 * It is also available through the world-wide-web at this URL:
 * http://opensource.org/licenses/osl-3.0.php
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to license@prestashop.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade PrestaShop to newer
 * versions in the future. If you wish to customize PrestaShop for your
 * needs please refer to http://www.prestashop.com for more information.
 *
 * @author    PrestaShop SA <contact@prestashop.com>
 * @copyright 2007-2017 PrestaShop SA
 * @license   http://opensource.org/licenses/osl-3.0.php Open Software License (OSL 3.0)
 * International Registered Trademark & Property of PrestaShop SA
 *}

<style>


</style>

<div class="header-top">
    <div id="desktop-header-container" class="container">
        <div class="row align-items-center">
            {if $iqitTheme.h_logo_position == 'left'}
                <div class="col col-auto col-header-left">
                    <div id="desktop_logo">
                        <a href="{$urls.base_url}">
                            <img class="logo img-fluid"
                                 src="{$shop.logo}" {if isset($iqitTheme.rm_logo) && $iqitTheme.rm_logo != ''} srcset="{$iqitTheme.rm_logo} 2x"{/if}
                                 alt="{$shop.name}">
                        </a>
                    </div>
                    {hook h='displayHeaderLeft'}
                </div>
                <div class="col col-header-center">
                    {if isset($iqitTheme.h_txt) && $iqitTheme.h_txt}
                        <div class="header-custom-html">
                            {$iqitTheme.h_txt nofilter}
                        </div>
                    {/if}
                    {widget name="iqitsearch"}
                    {hook h='displayHeaderCenter'}
                </div>
            {else}
                <div class="col col-header-left">
                    {if isset($iqitTheme.h_txt) && $iqitTheme.h_txt}
                        <div class="header-custom-html">
                            {$iqitTheme.h_txt nofilter}
                        </div>
                    {/if}
                    {widget name="iqitsearch"}
                    {hook h='displayHeaderLeft'}
                </div>
                <div class="col col-header-center text-center">
                    <div id="desktop_logo">
                        <a href="{$urls.base_url}">
                            <img class="logo img-fluid"
                                 src="{$shop.logo}" {if isset($iqitTheme.rm_logo) && $iqitTheme.rm_logo != ''} srcset="{$iqitTheme.rm_logo} 2x"{/if}
                                 alt="{$shop.name}" >
                        </a>
                    </div>
                    {hook h='displayHeaderCenter'}
                </div>
            {/if}
            <div class="col {if $iqitTheme.h_logo_position == 'left'}col-auto{/if} col-header-right">
                <div class="row no-gutters justify-content-end">
                    <div id="contact" class="col col-auto header-btn-w header-user-btn-w" >
                    
                        <a class="btn btn-secondary btn-lg" href="#" role="button" style="margin-top: 15%; width: 130px; ">{l s="Para Ella"}</a>
                    </div>
                    <div id="contact" class="col col-auto header-btn-w header-user-btn-w" >
                    
                        <a class="btn btn-secondary btn-lg" href="#" role="button" style="margin-top: 15%; width: 130px; background: #9E9E9E;">{l s="Para Él"}</a>
                    </div>
                    
                    <div id="contact" class="col col-auto header-btn-w header-user-btn-w">
                        <a href="">
                            <img src="{$iqitTheme.theme_assets}img/cont.png" width="70" height="80" style="margin-top: -8px; padding: 0;">
                        </a>
                    
                    </div>

                    {hook h="litespeedEsiBegin" m="ps_customersignin" field="widget_block" tpl="module:ps_customersignin/ps_customersignin-btn.tpl"}
                    {* {if !$configuration.is_catalog} *}
                        {* {hook h="litespeedEsiBegin" m="ps_shoppingcart" field="widget_block" tpl="module:ps_shoppingcart/ps_shoppingcart-btn.tpl"} *}
                        {widget_block name="ps_shoppingcart"}
                            {include 'module:ps_shoppingcart/ps_shoppingcart-btn.tpl'}
                        {/widget_block}
                        {hook h="litespeedEsiEnd"}
                    {* {/if} *}
                    {hook h="litespeedEsiEnd"}

                    {hook h='displayHeaderButtons'}
                    {widget_block name="ps_customersignin"}
                        {include 'module:ps_customersignin/ps_customersignin-btn.tpl'}
                    {/widget_block}
                   
                </div>
                {hook h='displayHeaderRight'}
            </div>
            <div class="col-12">
                <div class="row">
                    {hook h='displayTop'}
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container iqit-megamenu-container">{hook h='displayMainMenu'}</div>
{hook h='displayNavFullWidth'}

