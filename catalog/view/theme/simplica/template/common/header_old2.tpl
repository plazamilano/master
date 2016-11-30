<!DOCTYPE html>
<!--[if IE]><![endif]-->
<!--[if IE 8 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie8"><![endif]-->
<!--[if IE 9 ]><html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>" class="ie9"><![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<!--<![endif]-->
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content= "<?php echo $keywords; ?>" />
<?php } ?>
<script src="catalog/view/javascript/jquery/jquery-2.1.1.min.js" type="text/javascript"></script>
<!-- <link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" /> -->
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/simplica/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>

<link href="/catalog/view/theme/simplica/stylesheet/jquery-ui.css" rel="stylesheet">
<link href="/catalog/view/theme/simplica/stylesheet/style.css" rel="stylesheet">
<!-- <link href="/catalog/view/theme/simplica/stylesheet/style_mobile.css" rel="stylesheet"> -->
<link href="/catalog/view/theme/simplica/stylesheet/develop.css" rel="stylesheet">
<link href="/catalog/view/theme/simplica/stylesheet/develop_mobile.css" rel="stylesheet">
<script src="/catalog/view/javascript/common.js" type="text/javascript"></script>
<!-- <script src="catalog/view/theme/simplica/js/jquery-ui.js" type="text/javascript"></script> -->
<!-- <script src="catalog/view/theme/simplica/js/klarna.js" type="text/javascript"></script> -->
<!-- <script src="catalog/view/theme/simplica/js/app_lib.js" type="text/javascript"></script> -->
<script src="/catalog/view/theme/simplica/js/owl.carousel.min.js" type="text/javascript"></script>


<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<?php foreach ($scripts as $script) { ?>
<script src="<?php echo $script; ?>" type="text/javascript"></script>
<?php } ?>
<?php foreach ($analytics as $analytic) { ?>
<?php echo $analytic; ?>
<?php } ?>

</head>

<body class="<?php echo $class; ?> s-search m-not_authenticated_user" id="p-search">

    <noscript>
        <div class="b-js_off_alert">
            <p class="b-js_off_alert-copy"><?php echo $text_alert_copy; ?></p>
        </div>
    </noscript>
    <div class="h-hidden b-cookies_off js-disabled-cookies">
        <p class="b-cookies_off-copy"><?php echo $text_cookies_off_copy;?></p>
    </div>


<?php if ( isset($_GET['route']) AND $_GET['route'] == 'checkout/cart' ) { ?>

    <header class="l-header_checkout">
        <div class="b-primary_logo">
            <a class="b-primary_logo-link" href="<?php echo $home; ?>"><img alt="" src="catalog/view/theme/simplica/img/dg-logo.png" title=""></a>
        </div>
        <ul class="l-header_service_menu-checkout">
            <li class="l-header_service_menu-list">
                <div class="b-login_header-link">
                    Войти в аккаунт
                    <div class="b-login_dropdown js-login_dropdown js-toggler-slide h-minimized">
                        <div class="b-login_dropdown-flyout js-login_dropdown-flyout">
                            <div class="b-login_wide-customers">
                                <div class="b-login_account">
                                    <h3 class="b-login_account-title">Войти в аккаунт</h3>
                                    <div class="b-login_account-content m-returning-customers">
                                        <p class="b-login_account-info">Если Вы зарегистрированный пользователь, пожалуйста, введите Ваш адрес элетронной почты и пароль.</p>
                                        <form class="b-login_account-form js-login_account-form" action="" method="post" id="dwfrm_login" novalidate="novalidate">
                                            <div class="js-error_form f-form_error_message"></div>
                                            <fieldset class="b-login_account-form_fildset">
                                                <div class="js-fields_for_iframe b-login_account-fields_for_iframe">
                                                    <div class=" f-field f-field-email f-type-username f-state-required" data-required-text="Пожалуйста, введите Ваш Email" data-valid-text="">
                                                        <label class="f-label" for="dwfrm_login_username">
                                                            <span class="f-label-value">Email</span>
                                                        </label>
                                                        <div class="f-field-wrapper">
                                                            <input id="dwfrm_login_username" name="dwfrm_login_username" class="f-email    f-state-required" placeholder="E-Mail" maxlength="50" value="" type="email">
                                                            <span class="f-error_message">
                                                                <span class="f-error_message-block"></span>
                                                            </span>
                                                            <span class="f-warning_message">
                                                                <span class="f-warning_message-block">
                                                                    <span class="f-warning_text"></span>
                                                                </span>
                                                            </span>
                                                        </div>
                                                    </div>

                                                    <div class="f-field f-field-password b-account_registration-password_field f-state-required" data-required-text="Пожалуйста, введите Ваш пароль" data-valid-text="">
                                                        <label class="f-label" for="dwfrm_login_password">
                                                            <span class="f-label-value">Пароль</span>
                                                        </label>
                                                        <div class="f-field-wrapper">
                                                            <input id="dwfrm_login_password" name="dwfrm_login_password" class="f-password    f-state-required" placeholder="Пароль" maxlength="25" minlength="8" type="password">
                                                            <span class="f-error_message">
                                                                <span class="f-error_message-block"></span>
                                                            </span>
                                                            <span class="f-warning_message">
                                                                <span class="f-warning_message-block">
                                                                    <span class="f-warning_text"></span>
                                                                </span>
                                                            </span>
                                                        </div>
                                                    </div>

                                                    <div class=" f-field f-field-checkbox">
                                                        <div class="f-field-wrapper">
                                                            <input id="dwfrm_login_rememberme" name="dwfrm_login_rememberme" class="f-checkbox " value="true" type="checkbox">
                                                            <label class="f-label" for="dwfrm_login_rememberme">
                                                                <span class="f-label-value">Запомнить меня</span>
                                                            </label>
                                                            <span class="f-error_message">
                                                                <span class="f-error_message-block"></span>
                                                            </span>
                                                            <span class="f-warning_message">
                                                                <span class="f-warning_message-block">
                                                                    <span class="f-warning_text"></span>
                                                                </span>
                                                            </span>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="b-login_account-form_row">
                                                    <button class="b-login_account-login_button js-fake_submit" type="submit" value="Войти в аккаунт" name="dwfrm_login_login">
                                                        Войти
                                                    </button>
                                                    <a class="b-login_account-forgot_password" href="" target="_blank" title="Забыли пароль?">
                                                        Забыли пароль?
                                                    </a>
                                                    <input class="h-hidden" type="submit">
                                                </div>
                                            </fieldset>
                                        </form> 

                                        <button class="b-header_close_button"></button>
                                    </div>
                                </div>
                            </div>
                            <div class="b-login_wide-create">
                                <h3 class="b-login_wide-create_title">Создать аккаунт сейчас</h3>
                                <div class="b-login_wide-create_new">
                                    <div class="b-content_asset b-content_asset--login-create-benefits content-asset">
                                        <ul>
                                            <li>Сохраните данные карты оплаты для более быстрого оформления покупок</li>
                                            <li>Управлять Вашей историей заказов</li>
                                            <li>Получить доступ к Вашему Списку желаний</li>
                                        </ul>
                                    </div>
                                    <a class="b-login_wide-create_new_account_link" href="" target="_blank">
                                        <div class="b-registration_user-createaccount_box">
                                            <button class="b-login_wide-create_new_account_button" type="submit" value="Зарегистрироваться сейчас">Зарегистрироваться сейчас</button>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <button class="b-header_close_button"></button>
                    </div>
                </div>
                      
            </li>
            <li class="l-header_service_menu-list">
                <a class="b-back_to_shopping" href="/on/demandware.store/Sites-dolcegabbana-Site/ru/Cart-ContinueShopping">
                    <span class="b-back_to_shopping-message">Вернуться к покупкам</span>
                </a>
            </li>
        </ul>
    </header>

<?php } else { ?>

    <header class="l-header_main">
        <div class="l-header-search">
            <div class="b-header_search">
                <span class="b-header_search-title"><?php echo $text_search; ?></span>
                <div class="b-header_search-form_wrapper">
                    <form action="/<?php echo $language_href; ?>search-results" class="b-simple_search js-min_search js-toggler-slide h-minimized" id="simpleSearch" method="get" name="simpleSearch" novalidate="novalidate" role="search">
                        <fieldset class="b-simple_search-fieldset">
                            <legend class="b-simple_search-legend"><?php echo $text_search_legend; ?></legend>
                            <label class="b-simple_search-label" for="q"><?php echo $text_search; ?></label>
                            <input autocomplete="off" class="b-simple_search-field js-quicksearch js-validate_placeholder h-hidden" id="q" maxlength="100" name="q" placeholder="<?php echo $text_search; ?>" type="text" value="<?php echo $text_search; ?>">
                            <div class="b-simple_search-input js-simple_search_phrase" contenteditable="true" data-text="<?php echo $text_search; ?>"></div>
                            <span class="b-simple_search-suggested js-simple_search_suggest_phrase"></span>
                            <span class="b-simple_search-close_button js-search_clear h-minimized"></span>
                            <button class="b-simple_search-submit-button js-simple_search_submit_button" type="submit" value="Смотреть"><?php echo $text_search_submit_button; ?></button>
                            <div class="b-simple_search-gender_buttons js-simple_search_cat_btn_block">
                                <?php $count = 1; ?>
                                <?php foreach ($categories as $category) { ?>
                                    <button name="search_category" class="b-simple_search-gender_buttons--submit js-simple_search_category_button <?php if($count == 1){ echo 'active';$count = $category['href'];}?>" type="button" value="<?php echo $language_href.$category['href']; ?>"><?php echo $category['name']; ?></button>
                                <?php } ?>
                                <button name="search_category" class="b-simple_search-gender_buttons--submit js-simple_search_category_button" type="button" value="sale"><?php echo $text_sale; ?></button>
                                <button name="search_category" class="b-simple_search-gender_buttons--submit js-simple_search_category_button" type="button" value="brands"><?php echo $text_brands; ?></button>
                            </div>
                            <input class="js-simple_search_category_id" name="cgid" type="hidden" value="<?php echo $count; ?>">
                        </fieldset>
                    </form>
                    <ul class="js-quicksearch_result_container b-search_result h-minimized"></ul>
                    <script id="js-simple_search_item" type="text/template">
                    <li class="b-search_result-item">
                    <a class="b-search_result-product" href="{{url}}">
                    <img class="b-search_result-image" src="{{image}}"/>
                    <span class="b-search_result-title">{{name}}</span>
                    </a>
                    <span class="b-search_result-manufacturer">{{brand}}</span>
                    <span class="b-search_result-price">{{price}}</span>
                    </li>
                    </script>
                </div>
            </div>
        </div>
        <div class="l-header-minicart">
            <!-- Report any requested source code -->
            <!-- Report the active source code -->
            <div class="b-minicart-container js-mini_cart js-toggler-slide h-minimized" id="mini-cart">
                <div class="b-mini_cart">
                    <div id="cart">

                    <?php echo $cart; ?>

                    </div>
                </div>
                <button class="b-header_close_button"></button>
            </div>
        </div>
        <div class="b-login_dropdown js-login_dropdown h-minimized">
            <div class="b-login_dropdown-flyout js-login_dropdown-flyout">
                <div class="b-login_wide-customers">
                    <div class="b-login_account">
                        <h3 class="b-login_account-title"><?php echo $text_login; ?></h3>
                        <div class="b-login_account-content m-returning-customers">
                            <p class="b-login_account-info"><?php echo $text_login_enter; ?></p>
                            <form action="/<?php echo $language_href; ?>Account-LoginFlyout" class="b-login_account-form js-login_account-form" id="dwfrm_login" method="post" name="dwfrm_login" novalidate="novalidate">
                                <div class="js-error_form f-form_error_message"></div>
                                <fieldset class="b-login_account-form_fildset">
                                    <div class="js-fields_for_iframe b-login_account-fields_for_iframe">
                                        <div class=" f-field f-field-email f-type-username f-state-required" data-required-text="<?php echo $text_email_required; ?>" data-valid-text="">
                                            <label class="f-label" for="dwfrm_login_username"><span class="f-label-value">Email</span></label>
                                            <div class="f-field-wrapper">
                                                <input class="f-email f-state-required" id="dwfrm_login_username" maxlength="50" name="dwfrm_login_username" placeholder="E-Mail" type="email"> <span class="f-error_message"><span class="f-error_message-block"></span></span> <span class="f-warning_message"><span class="f-warning_message-block"><span class="f-warning_text"></span></span></span>
                                            </div>
                                        </div>
                                        <div class=" f-field f-field-password b-account_registration-password_field f-state-required" data-required-text="<?php echo $text_pass_required; ?>" data-valid-text="">
                                            <label class="f-label" for="dwfrm_login_password"><span class="f-label-value"><?php echo $text_pass; ?></span></label>
                                            <div class="f-field-wrapper">
                                                <input class="f-password f-state-required" id="dwfrm_login_password" maxlength="25" name="dwfrm_login_password" placeholder="<?php echo $text_pass; ?>" type="password"> <span class="f-error_message"><span class="f-error_message-block"></span></span> <span class="f-warning_message"><span class="f-warning_message-block"><span class="f-warning_text"></span></span></span>
                                            </div>
                                        </div>
                                        <div class=" f-field f-field-checkbox">
                                            <div class="f-field-wrapper">
                                                <input class="f-checkbox" id="dwfrm_login_rememberme" name="dwfrm_login_rememberme" type="checkbox" value="true"> <label class="f-label" for="dwfrm_login_rememberme"><span class="f-label-value">
                                                        <?php echo $text_rememberme; ?></span></label> <span class="f-error_message"><span class="f-error_message-block"></span></span> <span class="f-warning_message"><span class="f-warning_message-block"><span class="f-warning_text"></span></span></span>
                                            </div>
                                        </div>
                                        <div class=" f-field f-field-checkbox">
                                            <div class="f-field-wrapper">
                                                <input class="f-checkbox" id="dwfrm_login_signup" name="dwfrm_login_signup" type="checkbox" value="true"> <label class="f-label" for="dwfrm_login_signup">
                                                <span class="f-label-value"><?php echo $text_wanted_spam; ?></span></label> <span class="f-error_message"><span class="f-error_message-block"></span></span> <span class="f-warning_message"><span class="f-warning_message-block"><span class="f-warning_text"></span></span></span>
                                            </div>
                                        </div>
                                        <div class="b-login_account-privacy_box">
                                            П<?php echo $text_privacy_box_1; ?>
                                                <a class="b-login_account-privacy_box_link"
                                                    href="/<?php echo $language_href; ?>privacy-policy-<?php echo $language_href; ?>.html"
                                                    target="_blank"
                                                    title="<?php echo $text_privacy_box_2; ?>"><?php echo $text_privacy_box_2; ?></a>
                                        </div>
                                    </div>
                                    <div class="b-login_account-form_row">
                                        <button class="b-login_account-login_button js-fake_submit" name="dwfrm_login_login" type="submit" value="<?php echo $text_enter_to_account; ?>"><?php echo $text_enter; ?></button> <a class="b-login_account-forgot_password"
                                                href="/<?php echo $language_href; ?>forgotten_pass" target="_blank" title="<?php echo $text_forgotten_pass; ?>"><?php echo $text_forgotten_pass; ?></a> <input class="h-hidden" type="submit">
                                    </div><input name="dwfrm_login_securekey" type="hidden" value="2089620049">
                                </fieldset>
                            </form>
                            <div class="h-hidden">
                                <p>Или войти, используя сторонний ресурс:</p>
                                <form action="/<?php echo $language_href; ?>Account-LoginFlyout" class="clearfix" id="dwfrm_oauthlogin" method="post" name="dwfrm_oauthlogin" novalidate="novalidate">
                                    <fieldset>
                                        <input alt="Google login" class="oAuthIcon" id="Google" name="dwfrm_oauthlogin_login" src="img/google.png" type="image"> <input alt="LinkedIn login" class="oAuthIcon" id="LinkedIn" name="dwfrm_oauthlogin_login" src="img/linkedin.png" type="image"> <input alt="Microsoft login" class="oAuthIcon" id="Microsoft" name="dwfrm_oauthlogin_login" src="img/microsoft.png" type="image"> <input alt="Facebook login" class="oAuthIcon" id="Facebook" name="dwfrm_oauthlogin_login" src="img/facebook.png" type="image"> <input alt="GitHub login" class="oAuthIcon" id="GitHub" name="dwfrm_oauthlogin_login" src="img/github.jpg" type="image"> <input id="rememberme" name="rememberme" type="hidden" value=""> <input name="dwfrm_oauthlogin_securekey" type="hidden" value="1458227678"> <input id="OAuthProvider" name="OAuthProvider" type="hidden" value="">
                                    </fieldset>
                                    <p>Во время этого процесса Вы будете перенаправлены на страницу аутентификации стороннего ресурса. Если ранее Вы не использовали этот способ авторизации, Вам, возможно, будет предложено войти в Ваш аккаунт. logininclude.oauthloginerror=Произошел сбой входа в Ваш внешний ресурс, либо Вы не разрешили нашему магазину доступ к информации Вашего профиля на внешнем ресурсе.</p>
                                </form>
                            </div><button class="b-header_close_button"></button>
                        </div>
                    </div>
                </div>
                <div class="b-login_wide-create">
                    <h3 class="b-login_wide-create_title"><?php echo $text_make_account_now; ?></h3>
                    <div class="b-login_wide-create_new">
                        <div class="b-content_asset b-content_asset--login-create-benefits content-asset">
                            <!-- dwMarker="content" dwContentID="604e77f2400aebd3d75567f44a" -->
                            <?php echo $text_content_asset; ?>
                        </div><!-- End content-asset login-create-benefits -->
                         <a class="b-login_wide-create_new_account_link" href="/<?php echo $language_href; ?>register" target="_blank">
                        <div class="b-registration_user-createaccount_box">
                            <button class="b-login_wide-create_new_account_button" type="submit" value="<?php echo $text_register_now; ?>"><?php echo $text_register_now; ?></button>
                        </div></a>
                    </div>
                </div>
                <div class="b-login_wide-customer_care">
                    <div class="b-content_asset b-content_asset--login-customer-care content-asset">
                        <!-- dwMarker="content" dwContentID="" -->
                    </div><!-- End content-asset login-customer-care -->
                </div>
            </div>
            <div class="h-hidden">
                <div class="js-login_iframe_container h-hidden"
                     data-iframe-url="/<?php echo $language_href; ?>Account-LoginIframe"></div>
            </div><button class="b-header_close_button"></button>
        </div>
        <div class="h-hidden" data-is-user-authenticated="false" data-is-user-registered="false" data-is-user-subscribed="false" id="js-app_dynamic_data">
            &nbsp;
        </div>
        <div class="b-wishlist_flyout js-wishlist_flyout_container">
            <div class="b-wishlist_dropdown js-toggler-slide h-minimized">
                <div class="b-wishlist_flyout-block js-wishlist_dropdown-flyout">
                    <button class="b-header_close_button"></button>
                </div>
            </div>
        </div>
        <div class="b-header_main-top">
            <div class="b-header_main-wrapper">
                <div class="js-first-visit-banner b-first_visit_banner js-toggler-slide" style="display: none;">
                    <div class="js-policy_banner b-cookies_informer">
                        <div class="b-cookies_informer-info">
                            <div class="b-content_asset b-content_asset--homepage-cookie-policy content-asset">
                                <!-- dwMarker="content" dwContentID="80ed7d4ac2f997a3f5c4635524" -->
                                <div class="cookie-policy">
                                    <div class="cookie-policy-inner">
                                        <div class="cookie-policy-message">
                                            <div class="b-cookies_informer-title">
                                                Cookies
                                            </div>
                                            <div class="b-cookies_informer-info">
                                                <?php echo $text_cookie_error;?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- End content-asset homepage-cookie-policy -->
                        </div><span class="b-cookies_informer-close_button js-cookies_informer-close_button">&nbsp;</span>
                    </div>
                    <div class="b-language_informer">
                        <div class="b-language_informer-current">
                            Вы в Украина
                        </div>
                        <div class="b-language_informer-change">
                            Верный язык?&nbsp; Верная страна?&nbsp;
                            <div class="b-language_informer-choise">
                                <span class="js-toggler js-language_informer-link-keep b-language_informer-link" data-slide=".js-first-visit-banner">Оставить</span> | <span class="js-load_modal b-language_informer-link">Изменить</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="b-header_main-content">
                    <div class="b-vertical_menu-button js-vertical_menu-button">
                        menu
                    </div>
                    <div class="b-primary_logo">
                        <a class="b-primary_logo-link" href="<?php echo $home; ?>"><img alt="" src="catalog/view/theme/simplica/img/dg-logo.png" title=""></a>
                    </div>
                    <div class="l-main_navigation">
                        <nav class="b-main_navigation" id="navigation" role="navigation">
                            <ul class="b-menu_category">
                            <?php foreach ($categories as $category) { ?>
                                <li class="b-menu_category-item">
                                    <span class="b-menu_category-link"><?php echo $category['name']; ?></span>
                                    <div class="b-menu_category-level_2">
                                        <div class="b-menu_category-level_2-wrapper">
                                            <ul class="b-menu_category-level_2-list">
                                            <?php if (isset($category['children'])) { ?>
                                            <?php foreach ($category['children'] as $child2) { ?>
                                                <li class="b-menu_category-level_2-item" data-index="1">
                                                    <a href="<?php echo $language_href.$child2['href']; ?>"><span class="b-menu_category-level_2-link"><?php echo $child2['name']; ?></span></a>
                                                    <div class="b-menu_category-level_3">
                                                        <ul class="b-menu_category-level_3-list">
                                                        <?php if (isset($child2['children'])) { ?>
                                                        <?php foreach ($child2['children'] as $child3) { ?>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link" href="<?php echo $language_href.$child3['href']; ?>">
                                                                <h3><?php echo $child3['name']; ?></h3></a>
                                                            </li>
                                                        <?php }} ?>
                                                        </ul>
                                                    </div>
                                                </li>
                                            <?php }} ?>
                                            </ul>
                                        </div>
                                        <div class="b-close_arrow js-close_arrow"></div>
                                    </div>
                                </li>
                            <?php } ?>
                                <?php if(isset($text_sale)){ ?>
                                <li class="b-menu_category-item">
                                    <a href="/sale"><span class="b-menu_category-link"><?php echo $text_sale; ?></span></a>
                                </li>
                                <?php } ?>
                                <li class="b-menu_category-item">
                                    <a href="/brands"><span class="b-menu_category-link"><?php echo $text_brands; ?></span></a>
                                </li>
                            </ul>
                        </nav>
                    </div>

                    <ul class="l-header_service_menu">
                        <li class="l-header_service_menu-item l-header_service_menu-item-search"><span class="b-header_search_icon js-toggler js-search-icon" data-close-element=".js-search_clear" data-move-body="true" data-slide=".js-min_search, .js-search_clear" data-toggle-class="h-minimized" data-toggle-closeonoutsideclick="yes" data-toggle-elem-class="h-minimized"></span></li>
                        <li class="l-header_service_menu-item l-header_service_menu-item-login"><span class="b-login_dropdown-title js-login_dropdown-title js-toggler" data-close-element=".b-header_close_button" data-move-body="true" data-slide=".b-login_dropdown" data-toggle-class="h-minimized" data-toggle-closeonoutsideclick="yes" data-toggle-elem-class="h-toggled"></span></li>
                        <li class="l-header_service_menu-item l-header_service_menu-item-wishlist"><span class="b-wishlist_flyout-title js-toggler b-wishlist_empty js-wishlist_nonauth" data-close-element=".b-header_close_button" data-move-body="true" data-slide=".b-wishlist_dropdown" data-toggle-class="h-minimized" data-toggle-closeonoutsideclick="yes" data-toggle-elem-class="h-toggled"></span></li>
                        <li class="l-header_service_menu-item l-header_service_menu-item-minicart">
                            <div class="b-minicart">
                                <!-- Report any requested source code -->
                                <!-- Report the active source code -->
                                <div class="b-mini_cart-title js-mini_cart-title js-toggler" data-auto-close-timer="5000" data-close-element=".b-header_close_button" data-move-body="true" data-slide=".js-mini_cart" data-toggle-class="h-minimized" data-toggle-closeonoutsideclick="yes" data-toggle-elem-class="h-toggled">
                                    

                                    
                                    <span class="b-mini_cart-text b-mini_cart-empty">
                                        <span class="b-minicart-quantity_label"><?php echo $text_shopping_cart;?></span>
                                        <span class="b-minicart-quantity_value js-minicart-quantity_value <?php if ($cart_products_total == 0) { echo 'h-hidden'; } ?>"><?php echo $cart_products_total; ?></span>
                                    </span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="clearfloat"></div>
        </div>
    </header>

    <div class="mob-main_navigation">
        <div class="mob-header-menu-nav js-mob-main_navigation">
            <ul class="mob-menu_category-level_1_list">
                <?php foreach ($categories as $category) { ?>
                <li class="mob-menu_category-level_1_item">
                    <?php if ( !isset($category['children']) || count($category['children']) == 0 ) { ?>
                    <a class="mob-menu_category-level_1_link" href="<?php echo $language_href.$category['href']; ?>"><?php echo $category['name']; ?></a>
                    <?php } else { ?>
                    <span class="mob-menu_category-level_1_parent_text js-mob-category-list-toggle"><?php echo $category['name']; ?></span>
                    <ul class="mob-menu_category-level_2_list" style="display: none">
                        <?php foreach ($category['children'] as $child2) { ?>
                        <li class="mob-menu_category-level_2_item">
                            <?php if ( !isset($child2['children']) || count($child2['children']) == 0 ) { ?>
                            <a class="mob-menu_category-level_2_link" href="<?php echo $language_href.$child2['href']; ?>"><?php echo $child2['name']; ?></a>
                            <?php } else { ?>
                            <span class="mob-menu_category-level_2_parent_text js-mob-category-list-toggle"><?php echo $child2['name']; ?></span>
                            <ul class="mob-menu_category-level_3_list" style="display: none">
                                <?php foreach ($child2['children'] as $child3) { ?>
                                <li class="mob-menu_category-level_3_item">
                                    <a class="mob-menu_category-level_3_link" href="<?php echo $language_href.$child3['href']; ?>"><?php echo $child3['name']; ?></a>
                                </li>
                                <?php } ?>
                            </ul>
                            <?php } ?>
                        </li>
                        <?php } ?>
                    </ul>
                    <?php } ?>
                </li>
                <?php } ?>
                <?php if(isset($text_sale)){ ?>
                <li class="mob-menu_category-level_1_item">
                    <a href="/sale"><?php echo $text_sale; ?></a>
                </li>
                <?php } ?>
                <li class="mob-menu_category-level_1_item">
                    <a href="/brands"><?php echo $text_brands; ?></a>
                </li>
            </ul>
            <ul class="mob-service_menu">
                <li class="mob-service_menu-item">
                    <a href="/">Ваша корзина</a>
                </li>
                <li class="mob-service_menu-item">
                    <a href="/">Список желаний</a>
                </li>
                <li class="mob-service_menu-item">
                    <a href="/">Клиентская служба</a>
                </li>
            </ul>
        </div>
    </div>

<?php } ?>
