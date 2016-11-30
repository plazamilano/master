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
<link href="catalog/view/javascript/bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen" />
<script src="catalog/view/javascript/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<link href="catalog/view/javascript/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="//fonts.googleapis.com/css?family=Open+Sans:400,400i,300,700" rel="stylesheet" type="text/css" />
<link href="catalog/view/theme/simplica/stylesheet/stylesheet.css" rel="stylesheet">
<?php foreach ($styles as $style) { ?>
<link href="<?php echo $style['href']; ?>" type="text/css" rel="<?php echo $style['rel']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<link href="catalog/view/theme/simplica/stylesheet/style.css" rel="stylesheet">
<link href="catalog/view/theme/simplica/stylesheet/develop.css" rel="stylesheet">
<script src="catalog/view/javascript/common.js" type="text/javascript"></script>
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
<body class="<?php echo $class; ?> s-search m-not_authenticated_user" id="p-search" style="padding-top: 65px;">

    <noscript>
        <div class="b-js_off_alert">
            <p class="b-js_off_alert-copy">В Вашем браузере выключена функция Javascript. Пожалуйста, включите её, чтобы задействовать все возможности сайта.</p>
        </div>
    </noscript>
    <div class="h-hidden b-cookies_off js-disabled-cookies">
        <p class="b-cookies_off-copy">Ваш браузер в настоящее время не поддерживает Cookies. Пожалуйста, настройте Ваш браузер для приёма Cookies и проверьте, не блокирует ли их другая программа.</p>
    </div>


    <header class="l-header_main">
        <div class="l-header-search">
            <div class="b-header_search">
                <span class="b-header_search-title">Искать</span>
                <div class="b-header_search-form_wrapper">
                    <form action="/ru/search-results" class="b-simple_search js-min_search h-minimized" id="simpleSearch" method="get" name="simpleSearch" novalidate="novalidate" role="search">
                        <fieldset class="b-simple_search-fieldset">
                            <legend class="b-simple_search-legend">Искать в каталоге</legend>
                            <label class="b-simple_search-label" for="q">Искать</label>
                            <input autocomplete="off" class="b-simple_search-field js-quicksearch js-validate_placeholder h-hidden" id="q" maxlength="100" name="q" placeholder="Поиск" type="text" value="Поиск">
                            <div class="b-simple_search-input js-simple_search_phrase" contenteditable="true" data-text="Поиск"></div>
                            <span class="b-simple_search-suggested js-simple_search_suggest_phrase"></span>
                            <span class="b-simple_search-close_button js-search_clear h-minimized"></span>
                            <button class="b-simple_search-submit-button js-simple_search_submit_button" type="submit" value="Смотреть">Смотреть</button>
                            <div class="b-simple_search-gender_buttons js-simple_search_cat_btn_block">
                                <button class="b-simple_search-gender_buttons--submit js-simple_search_category_button active" type="button" value="women">Женское</button>
                                <button class="b-simple_search-gender_buttons--submit js-simple_search_category_button" type="button" value="men">Мужское</button>
                            </div>
                            <input class="js-simple_search_category_id" name="cgid" type="hidden" value="women">
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
            <div class="b-minicart-container js-mini_cart h-minimized" id="mini-cart">
                <div class="b-mini_cart">
                    <div class="b-mini_cart-flyout js-mini_cart-flyout">
                        <span class="b-mini_cart-flyout_empty_cart">У вас нет.</span>
                    </div><button class="b-header_close_button"></button>
                </div>
            </div>
        </div>
        <div class="b-login_dropdown js-login_dropdown h-minimized">
            <div class="b-login_dropdown-flyout js-login_dropdown-flyout">
                <div class="b-login_wide-customers">
                    <div class="b-login_account">
                        <h3 class="b-login_account-title">Войти в аккаунт</h3>
                        <div class="b-login_account-content m-returning-customers">
                            <p class="b-login_account-info">Если Вы зарегистрированный пользователь, пожалуйста, введите Ваш адрес элетронной почты и пароль.</p>
                            <form action="https://store.dolcegabbana.com/on/demandware.store/Sites-dolcegabbana-Site/ru/Account-LoginFlyout/C1057866170" class="b-login_account-form js-login_account-form" id="dwfrm_login" method="post" name="dwfrm_login" novalidate="novalidate">
                                <div class="js-error_form f-form_error_message"></div>
                                <fieldset class="b-login_account-form_fildset">
                                    <div class="js-fields_for_iframe b-login_account-fields_for_iframe">
                                        <div class=" f-field f-field-email f-type-username f-state-required" data-required-text="Пожалуйста, введите Ваш Email" data-valid-text="">
                                            <label class="f-label" for="dwfrm_login_username"><span class="f-label-value">Email</span></label>
                                            <div class="f-field-wrapper">
                                                <input class="f-email f-state-required" id="dwfrm_login_username" maxlength="50" name="dwfrm_login_username" placeholder="E-Mail" type="email"> <span class="f-error_message"><span class="f-error_message-block"></span></span> <span class="f-warning_message"><span class="f-warning_message-block"><span class="f-warning_text"></span></span></span>
                                            </div>
                                        </div>
                                        <div class=" f-field f-field-password b-account_registration-password_field f-state-required" data-required-text="Пожалуйста, введите Ваш пароль" data-valid-text="">
                                            <label class="f-label" for="dwfrm_login_password"><span class="f-label-value">Пароль</span></label>
                                            <div class="f-field-wrapper">
                                                <input class="f-password f-state-required" id="dwfrm_login_password" maxlength="25" name="dwfrm_login_password" placeholder="Пароль" type="password"> <span class="f-error_message"><span class="f-error_message-block"></span></span> <span class="f-warning_message"><span class="f-warning_message-block"><span class="f-warning_text"></span></span></span>
                                            </div>
                                        </div>
                                        <div class=" f-field f-field-checkbox">
                                            <div class="f-field-wrapper">
                                                <input class="f-checkbox" id="dwfrm_login_rememberme" name="dwfrm_login_rememberme" type="checkbox" value="true"> <label class="f-label" for="dwfrm_login_rememberme"><span class="f-label-value">Запомнить меня</span></label> <span class="f-error_message"><span class="f-error_message-block"></span></span> <span class="f-warning_message"><span class="f-warning_message-block"><span class="f-warning_text"></span></span></span>
                                            </div>
                                        </div>
                                        <div class=" f-field f-field-checkbox">
                                            <div class="f-field-wrapper">
                                                <input class="f-checkbox" id="dwfrm_login_signup" name="dwfrm_login_signup" type="checkbox" value="true"> <label class="f-label" for="dwfrm_login_signup"><span class="f-label-value">Подписаться на новостную рассылку</span></label> <span class="f-error_message"><span class="f-error_message-block"></span></span> <span class="f-warning_message"><span class="f-warning_message-block"><span class="f-warning_text"></span></span></span>
                                            </div>
                                        </div>
                                        <div class="b-login_account-privacy_box">
                                            Принимая, Вы соглашаетесь с нашей <a class="b-login_account-privacy_box_link" href="http://store.dolcegabbana.com/ru/%D0%BF%D0%BE%D0%BB%D0%B8%D1%82%D0%B8%D0%BA%D0%B0-%D0%BA%D0%BE%D0%BD%D1%84%D0%B8%D0%B4%D0%B5%D0%BD%D1%86%D0%B8%D0%B0%D0%BB%D1%8C%D0%BD%D0%BE%D1%81%D1%82%D0%B8/privacy-policy.html" target="_blank" title="Политика конфиденциальности">Политика конфиденциальности</a>
                                        </div>
                                    </div>
                                    <div class="b-login_account-form_row">
                                        <button class="b-login_account-login_button js-fake_submit" name="dwfrm_login_login" type="submit" value="Войти в аккаунт">Войти</button> <a class="b-login_account-forgot_password" href="https://login.dolcegabbana.com/RecuperaPassword.aspx?Lang=en-US" target="_blank" title="Забыли пароль?">Забыли пароль?</a> <input class="h-hidden" type="submit">
                                    </div><input name="dwfrm_login_securekey" type="hidden" value="2089620049">
                                </fieldset>
                            </form>
                            <div class="h-hidden">
                                <p>Или войти, используя сторонний ресурс:</p>
                                <form action="https://store.dolcegabbana.com/on/demandware.store/Sites-dolcegabbana-Site/ru/Account-LoginFlyout/C1057866170" class="clearfix" id="dwfrm_oauthlogin" method="post" name="dwfrm_oauthlogin" novalidate="novalidate">
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
                    <h3 class="b-login_wide-create_title">Создать аккаунт сейчас</h3>
                    <div class="b-login_wide-create_new">
                        <div class="b-content_asset b-content_asset--login-create-benefits content-asset">
                            <!-- dwMarker="content" dwContentID="604e77f2400aebd3d75567f44a" -->
                            <ul>
                                <li>Сохраните данные карты оплаты для более быстрого оформления покупок</li>
                                <li>Управлять Вашей историей заказов</li>
                                <li>Получить доступ к Вашему Списку желаний</li>
                            </ul>
                        </div><!-- End content-asset login-create-benefits -->
                         <a class="b-login_wide-create_new_account_link" href="https://login.dolcegabbana.com/Registration.aspx?Lang=en-US" target="_blank">
                        <div class="b-registration_user-createaccount_box">
                            <button class="b-login_wide-create_new_account_button" type="submit" value="Зарегистрироваться сейчас">Зарегистрироваться сейчас</button>
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
                <div class="js-login_iframe_container h-hidden" data-iframe-url="https://store.dolcegabbana.com/on/demandware.store/Sites-dolcegabbana-Site/ru/Account-LoginIframe"></div>
            </div><button class="b-header_close_button"></button>
        </div>
        <div class="h-hidden" data-is-user-authenticated="false" data-is-user-registered="false" data-is-user-subscribed="false" id="js-app_dynamic_data">
            &nbsp;
        </div>
        <div class="b-wishlist_flyout js-wishlist_flyout_container">
            <div class="b-wishlist_dropdown h-minimized">
                <div class="b-wishlist_flyout-block js-wishlist_dropdown-flyout">
                    <button class="b-header_close_button"></button>
                </div>
            </div>
        </div>
        <div class="b-header_main-top">
            <div class="b-header_main-wrapper">
                <div class="js-first-visit-banner b-first_visit_banner" style="display: none;">
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
                                                Веб-сайт пользуется cookie-файлами для использования в целях отправления рекламных сообщений и услуг в соответствии с Вашими предпочтениями, включая их управление третьими лицами. Более подробные сведения или способы отказа от использования всех или некоторых cookie-файлов доступны <a href="http://store.dolcegabbana.com/ru/customer-care?cid=cookie-policy">по ссылке.</a>.<br>
                                                Закрыв этот баннер, прокрутив страницу или нажав на любой элемент, расположенный ниже, Вы подтверждаете свое согласие на использование cookie-файлов.
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
                        <a class="b-primary_logo-link" href="http://store.dolcegabbana.com/ru/home"><img alt="" src="img/dg-logo.png" title=""></a>
                    </div>
                    <div class="l-main_navigation js-main_navigation">
                        <nav class="b-main_navigation" id="navigation" role="navigation">
                            <div class="b-main_navigation-title">
                                header.navigation.title
                            </div>
                            <ul class="b-menu_category">
                                <li class="b-menu_category-item js-menu_category-item js-flyout-container m-women b-menu_category-item--first m-current b-menu_category-item--current m-with_subcategories">
                                    <span class="b-menu_category-link">Женское</span>
                                    <div class="b-menu_category-level_2 js-flyout-item js-menu_subcategory_wrapper">
                                        <div class="b-menu_category-level_2-wrapper">
                                            <ul class="b-menu_category-level_2-list js-menu_category-level_2-list">
                                                <li class="b-menu_category-level_2-item js-menu_category-level_2-item b-menu_category-level_2-item--first m-with_subcategories" data-index="1">
                                                    <span class="b-menu_category-level_2-link js-menu_category-level_2-link">Одежда</span>
                                                    <div class="b-menu_category-level_3 b-menu_category-level_3--close js-menu_subcategory_wrapper">
                                                        <ul class="b-menu_category-level_3-list">
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/%D0%BF%D0%BB%D0%B0%D1%82%D1%8C%D1%8F/">
                                                                <h3>Платья</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/%D1%80%D1%83%D0%B1%D0%B0%D1%88%D0%BA%D0%B8-%D0%B8-%D0%B1%D0%BB%D1%83%D0%B7%D0%BA%D0%B8/">
                                                                <h3>Рубашки и блузки</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/%D0%BF%D0%B0%D0%BB%D1%8C%D1%82%D0%BE-%D0%B8-%D0%BF%D0%BB%D0%B0%D1%89%D0%B8/">
                                                                <h3>Пальто и плащи</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/%D1%82%D1%80%D0%B8%D0%BA%D0%BE%D1%82%D0%B0%D0%B6/">
                                                                <h3>Трикотаж</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/%D0%B6%D0%B0%D0%BA%D0%B5%D1%82%D1%8B/">
                                                                <h3>Жакеты</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/%D1%8E%D0%B1%D0%BA%D0%B8/">
                                                                <h3>Юбки</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/%D0%B8%D0%B7-%D0%B4%D0%B5%D0%BD%D0%B8%D0%BC%D0%B0/">
                                                                <h3>Из денима</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/%D0%B1%D1%80%D1%8E%D0%BA%D0%B8-%D0%B8-%D0%BB%D0%B5%D0%B3%D0%B3%D0%B8%D0%BD%D1%81%D1%8B/">
                                                                <h3>Брюки и леггинсы</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/%D1%82%D0%BE%D0%BF%D1%8B-%D0%B8-%D1%84%D1%83%D1%82%D0%B1%D0%BE%D0%BB%D0%BA%D0%B8/">
                                                                <h3>Топы и футболки</h3></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="b-menu_category-level_2-item js-menu_category-level_2-item m-with_subcategories" data-index="2">
                                                    <span class="b-menu_category-level_2-link js-menu_category-level_2-link">Сумки</span>
                                                    <div class="b-menu_category-level_3 b-menu_category-level_3--close js-menu_subcategory_wrapper">
                                                        <ul class="b-menu_category-level_3-list">
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D1%81%D1%83%D0%BC%D0%BA%D0%B8/">
                                                                <h3>Смотреть все</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D1%81%D1%83%D0%BC%D0%BA%D0%B8/sicily-bag/">
                                                                <h3>Sicily bag</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D1%81%D1%83%D0%BC%D0%BA%D0%B8/dolce-family/">
                                                                <h3>Dolce Family</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D1%81%D1%83%D0%BC%D0%BA%D0%B8/%D1%81-%D0%BA%D0%BE%D1%80%D0%BE%D1%82%D0%BA%D0%B8%D0%BC%D0%B8-%D1%80%D1%83%D1%87%D0%BA%D0%B0%D0%BC%D0%B8/">
                                                                <h3>С короткими ручками</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D1%81%D1%83%D0%BC%D0%BA%D0%B8/%D0%BC%D0%B8%D0%BD%D0%B8-%D1%81%D1%83%D0%BC%D0%BE%D1%87%D0%BA%D0%B8/">
                                                                <h3>Мини-сумочки</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D1%81%D1%83%D0%BC%D0%BA%D0%B8/%D1%88%D0%BE%D0%BF%D0%BF%D0%B5%D1%80%D1%8B/">
                                                                <h3>Шопперы</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D1%81%D1%83%D0%BC%D0%BA%D0%B8/%D0%BA%D0%BB%D0%B0%D1%82%D1%87%D0%B8/">
                                                                <h3>Клатчи</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D1%81%D1%83%D0%BC%D0%BA%D0%B8/%D0%BD%D0%B0-%D0%B4%D0%BB%D0%B8%D0%BD%D0%BD%D0%BE%D0%BC-%D1%80%D0%B5%D0%BC%D0%B5%D1%88%D0%BA%D0%B5/">
                                                                <h3>На длинном ремешке</h3></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="b-menu_category-level_2-item js-menu_category-level_2-item m-with_subcategories" data-index="3">
                                                    <span class="b-menu_category-level_2-link js-menu_category-level_2-link">Обувь</span>
                                                    <div class="b-menu_category-level_3 b-menu_category-level_3--close js-menu_subcategory_wrapper">
                                                        <ul class="b-menu_category-level_3-list">
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/">
                                                                <h3>Смотреть все</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/rainbow-lace/">
                                                                <h3>Rainbow Lace</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/%D1%82%D1%83%D1%84%D0%BB%D0%B8-%D0%BD%D0%B0-%D0%BA%D0%B0%D0%B1%D0%BB%D1%83%D0%BA%D0%B5/">
                                                                <h3>Туфли на каблуке</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/%D1%81%D0%B0%D0%BF%D0%BE%D0%B3%D0%B8-%D0%B8-%D0%B1%D0%BE%D1%82%D0%B8%D0%BB%D1%8C%D0%BE%D0%BD%D1%8B/">
                                                                <h3>Сапоги и ботильоны</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/%D1%81%D0%B0%D0%BD%D0%B4%D0%B0%D0%BB%D0%B8%D0%B8/">
                                                                <h3>Сандалии</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/%D0%BB%D0%BE%D1%84%D0%B5%D1%80%D1%8B/">
                                                                <h3>Лоферы</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B1%D1%83%D0%B2%D1%8C/%D0%BA%D0%B5%D0%B4%D1%8B/">
                                                                <h3>Кеды</h3></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="b-menu_category-level_2-item js-menu_category-level_2-item m-with_subcategories" data-index="4">
                                                    <span class="b-menu_category-level_2-link js-menu_category-level_2-link">Аксессуары</span>
                                                    <div class="b-menu_category-level_3 b-menu_category-level_3--close js-menu_subcategory_wrapper">
                                                        <ul class="b-menu_category-level_3-list">
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D0%BA%D0%BE%D0%B6%D0%B3%D0%B0%D0%BB%D0%B0%D0%BD%D1%82%D0%B5%D1%80%D0%B5%D1%8F/">
                                                                <h3>Кожгалантерея</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D1%80%D0%B5%D0%BC%D0%B5%D1%88%D0%BA%D0%B8/">
                                                                <h3>РЕМЕШКИ</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B-hi-tech/">
                                                                <h3>Аксессуары Hi-Tech</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D1%8E%D0%B2%D0%B5%D0%BB%D0%B8%D1%80%D0%BD%D1%8B%D0%B5-%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%8F-%D0%B8-%D0%B1%D0%B8%D0%B6%D1%83%D1%82%D0%B5%D1%80%D0%B8%D1%8F/">
                                                                <h3>Ювелирные изделия и бижутерия</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D1%88%D0%B0%D1%80%D1%84%D1%8B-%D0%B8-%D0%BF%D0%BB%D0%B0%D1%82%D0%BA%D0%B8/">
                                                                <h3>Шарфы и платки</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D1%88%D0%BB%D1%8F%D0%BF%D1%8B-%D0%B8-%D0%BF%D0%B5%D1%80%D1%87%D0%B0%D1%82%D0%BA%D0%B8/">
                                                                <h3>Шляпы и перчатки</h3></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                                <li class="b-menu_category-level_2-item js-menu_category-level_2-item b-menu_category-level_2-item--last m-with_subcategories" data-index="5">
                                                    <h2 class="b-menu_category-level_2-item_title"><span class="b-menu_category-level_2-link js-menu_category-level_2-link b-menu_category-level_2-link--current">основные моменты</span></h2>
                                                    <div class="b-menu_category-level_3 b-menu_category-level_3--close js-menu_subcategory_wrapper">
                                                        <ul class="b-menu_category-level_3-list">
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%BD%D1%8B%D0%B5-%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D1%8B/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%B0%D1%8F-%D0%BA%D0%BE%D0%BB%D0%BB%D0%B5%D0%BA%D1%86%D0%B8%D1%8F-%D1%81-%D0%BF%D0%BE%D0%B4%D0%B8%D1%83%D0%BC%D0%B0/">
                                                                <h3>Женская коллекция с подиума</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%BD%D1%8B%D0%B5-%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D1%8B/%D0%B1%D0%B0%D0%BD%D0%B0%D0%BD%D0%BE%D0%B2%D1%8B%D0%B5-%D0%BB%D0%B8%D1%81%D1%82%D1%8C%D1%8F/">
                                                                <h3>Ботанический сад</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%BD%D1%8B%D0%B5-%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D1%8B/%D0%BC%D0%B0%D0%B9%D0%BE%D0%BB%D0%B8%D0%BA%D0%B0/">
                                                                <h3>майолика</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%BD%D1%8B%D0%B5-%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D1%8B/rainbow-lace-collection/">
                                                                <h3>Rainbow Lace Collection</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/womens-highlights/dgdolceradiobag/">
                                                                <h3>#DGDOLCERADIOBAG</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%BD%D1%8B%D0%B5-%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D1%8B/%23dgfamily/">
                                                                <h3>#DGFAMILY</h3></a>
                                                            </li>
                                                            <li class="b-menu_category-level_3-item">
                                                                <a class="b-menu_category-level_3-link js-menu_category-level_3-link" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D1%81%D0%BD%D0%BE%D0%B2%D0%BD%D1%8B%D0%B5-%D0%BC%D0%BE%D0%BC%D0%B5%D0%BD%D1%82%D1%8B/frigorifero-d%27arte/">
                                                                <h3>Frigorifero d'Arte</h3></a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="b-close_arrow js-close_arrow"></div>
                                    </div>
                                </li>
                            </ul>
                            <div class="tablet-header-menu-nav h-hidden">
                                <ul class="b-menu_category">
                                    <li class="b-menu_category-item js-menu_category-item js-flyout-container">
                                        <a class="b-menu_category-link" href="http://store.dolcegabbana.com/ru/customer-care">CUSTOMER SERVICE</a>
                                    </li>
                                    <li class="b-menu_category-item js-menu_category-item js-flyout-container">
                                        <a class="b-menu_category-link" href="http://store.dolcegabbana.com/ru/customer-service-privacy-security/%D1%81%D0%B2%D1%8F%D0%B7%D0%B0%D1%82%D1%8C%D1%81%D1%8F-%D1%81-%D0%BD%D0%B0%D0%BC%D0%B8/contact-form.html">CONTACT</a>
                                    </li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <ul class="l-header_service_menu">
                        <li class="l-header_service_menu-item"><span class="b-header_search_icon js-toggler js-search-icon" data-close-element=".js-search_clear" data-move-body="true" data-slide=".js-min_search, .js-search_clear" data-toggle-class="h-minimized" data-toggle-closeonoutsideclick="yes" data-toggle-elem-class="h-minimized"></span></li>
                        <li class="l-header_service_menu-item"><span class="b-login_dropdown-title js-login_dropdown-title js-toggler" data-close-element=".b-header_close_button" data-move-body="true" data-slide=".b-login_dropdown" data-toggle-class="h-minimized" data-toggle-closeonoutsideclick="yes" data-toggle-elem-class="h-toggled"></span></li>
                        <li class="l-header_service_menu-item"><span class="b-wishlist_flyout-title js-toggler b-wishlist_empty js-wishlist_nonauth" data-close-element=".b-header_close_button" data-move-body="true" data-slide=".b-wishlist_dropdown" data-toggle-class="h-minimized" data-toggle-closeonoutsideclick="yes" data-toggle-elem-class="h-toggled"></span></li>
                        <li class="l-header_service_menu-item">
                            <div class="b-minicart">
                                <!-- Report any requested source code -->
                                <!-- Report the active source code -->
                                <div class="b-mini_cart-title js-mini_cart-title js-toggler" data-auto-close-timer="5000" data-close-element=".b-header_close_button" data-move-body="true" data-slide=".js-mini_cart" data-toggle-class="h-minimized" data-toggle-closeonoutsideclick="yes" data-toggle-elem-class="h-toggled">
                                    <span class="b-mini_cart-text b-mini_cart-empty"><a class="b-mini_cart-text_link b-minicart-icon" href="https://store.dolcegabbana.com/on/demandware.store/Sites-dolcegabbana-Site/ru/Cart-Show" title="Корзина"><span class="b-minicart-quantity"><span class="b-minicart-quantity_label">Корзина</span> <span class="b-minicart-quantity_value">0</span></span></a></span>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="clearfloat"></div>
        </div>
    </header>









<nav id="top">
  <div class="container">
    <?php echo $currency; ?>
    <?php echo $language; ?>
    <div id="top-links" class="nav pull-right">
      <ul class="list-inline">
        <li><a href="<?php echo $contact; ?>"><i class="fa fa-phone"></i></a> <span class="hidden-xs hidden-sm hidden-md"><?php echo $telephone; ?></span></li>
        
        <li><a href="<?php echo $wishlist; ?>" id="wishlist-total" title="<?php echo $text_wishlist; ?>"><i class="fa fa-heart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_wishlist; ?></span></a></li>
        <li><a href="<?php echo $shopping_cart; ?>" title="<?php echo $text_shopping_cart; ?>"><i class="fa fa-shopping-cart"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_shopping_cart; ?></span></a></li>
        <li><a href="<?php echo $checkout; ?>" title="<?php echo $text_checkout; ?>"><i class="fa fa-share"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_checkout; ?></span></a></li><li class="dropdown"><a href="<?php echo $account; ?>" title="<?php echo $text_account; ?>" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span> <span class="caret"></span></a>
          <ul class="dropdown-menu dropdown-menu-right">
            <?php if ($logged) { ?>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
            <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
            <li><a href="<?php echo $logout; ?>"><?php echo $text_logout; ?></a></li>
            <?php } else { ?>
            <li><a href="<?php echo $register; ?>"><?php echo $text_register; ?></a></li>
            <li><a href="<?php echo $login; ?>"><?php echo $text_login; ?></a></li>
            <?php } ?>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>
<header>
  <div class="container">
    <div class="row">
      <div class="col-sm-3">
        <div id="logo">
          <?php if ($logo) { ?>
          <a href="<?php echo $home; ?>"><img src="<?php echo $logo; ?>" title="<?php echo $name; ?>" alt="<?php echo $name; ?>" class="img-responsive" /></a>
          <?php } else { ?>
          <h1><a href="<?php echo $home; ?>"><?php echo $name; ?></a></h1>
          <?php } ?>
        </div>
      </div>
      <div class="col-md-6 col-sm-5"><?php echo $search; ?>
      </div>
      <div class="col-md-3 col-sm-4"><?php echo $cart; ?></div>
    </div>
  </div>
</header>
<?php if ($categories) { ?>
<div class="container">
  <nav id="menu" class="navbar">
    <div class="navbar-header"><span id="category" class="visible-xs"><?php echo $text_category; ?></span>
      <button type="button" class="btn btn-navbar navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse"><i class="fa fa-bars"></i></button>
    </div>
    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <ul class="nav navbar-nav">
      <li class="hidden-xs"><a href="<?php echo $home; ?>"><?php echo $text_home; ?></a></li>
        <?php foreach ($categories as $category) { ?>
        <?php if ($category['children']) { ?>
        <li class="dropdown"><a href="<?php echo $category['href']; ?>" class="dropdown-toggle" data-toggle="dropdown"><?php echo $category['name']; ?></a>
          <div class="dropdown-menu">
            <div class="dropdown-inner">
              <?php foreach (array_chunk($category['children'], ceil(count($category['children']) / $category['column'])) as $children) { ?>
              <ul class="list-unstyled">
                <?php foreach ($children as $child) { ?>
                <li><a href="<?php echo $child['href']; ?>"><?php echo $child['name']; ?></a></li>
                <?php } ?>
              </ul>
              <?php } ?>
            </div>
            <a href="<?php echo $category['href']; ?>" class="see-all"><?php echo $text_all; ?> <?php echo $category['name']; ?></a> </div>
        </li>
        <?php } else { ?>
        <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a></li>
        <?php } ?>
        <?php } ?>
      </ul>
    </div>
  </nav>
</div>
<?php } ?>
