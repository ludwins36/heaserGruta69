<div id="header-user-btn" class="col col-auto header-btn-w header-user-btn-w" style="margin-top: 5%;">  
    {if $logged}

        <a class="cart-btns" href="{$my_account_url}"
           title="{l s='View my customer account' d='Shop.Theme.Customeraccount'}"
           {* rel="nofollow" class="header-btn header-user-btn"> *}
            <img src="{$iqitTheme.theme_assets}img/user.svg" class="img-help">
            {* <i class="fa fa-user fa-fw icon" aria-hidden="true"></i> *}
            <span class="title custome-title">{$customer.firstname|truncate:15:'...'}</span>
        </a>
    {else}
        <a class="cart-btns" href="{$my_account_url}"
           title="{l s='Log in to your customer account' d='Shop.Theme.Customeraccount'}"
           rel="nofollow" class="header-btn header-user-btn">
            {* <i class="fa fa-user fa-fw icon" aria-hidden="true"></i> *}
            <img src="{$iqitTheme.theme_assets}img/user.svg" class="img-help">
            <span class="title custome-title">{l s='LOGIN'}</span>
        </a>
    {/if}
</div>
