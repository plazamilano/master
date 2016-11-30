<?php echo $header; ?>

<main role="main" class="l-pdp js-pdp_main" itemscope="" itemtype="http://schema.org/Product"> 

    <div class="js-zoom_fancybox"></div>
    <div class="l-pdp_primary_content js-pdp_primary_content">
        <div class="b-product_header">
            <!-- Хлебные крошки. START -->
            <ul class="b-product_breadcrumbs" itemscope itemtype="http://schema.org/BreadcrumbList">
                <?php $count = 0; ?>
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                    <li class="b-breadcrumb-item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" <?php if ($count == 0) { echo ' style="display: none;"';} ?>>
                        <a  class="b-breadcrumb-link js-breadcrumb_refinement-link" href="<?php echo $breadcrumb['href']; ?>" itemprop="item" title="<?php echo $breadcrumb['text']; ?>"><span itemprop="name"><?php echo $breadcrumb['text']; ?></span></a>
                        <meta content="<?php echo $count++; ?>">
                    </li>
                <?php } ?>
            </ul>
            <!-- Хлебные крошки. END -->
            <div class="js-product_nav_container b-product_nav">
                <a class="b-product_nav-link_next" href="#" title=""><img alt="" class="b-product_nav-image_next" src="img/noimagesmall.png" title=""> <span class="b-product_nav-text_next">Далее</span></a>
            </div>
        </div>

        <div class="l-product_images_container">
            <div class="l-product_images_container-wrap js-product_images_container js-product_images_container-zoom js-product_images_fixed" style="top: 0px; position: relative; width: 100%;">
                <div class="b-primary_logo">
                    <a class="b-primary_logo-link" href="http://store.dolcegabbana.com/ru/home"><img alt="" src="img/dg-logo.png" title=""></a>
                </div>
                <div class="js-thumbnails_slider b-product_thumbnails js-thumbs-F61D5TFMME1S8031" data-thumbs-quantity="">
                    <ul class="js-thumbnails b-product_thumbnails-list" data-colorswatchid="F61D5TFMME1S8031">
                        <?php foreach ($images as $img) { ?>
                        <li class="js-thumbnail b-product_thumbnail b-product_thumbnail-selected">
                            <img alt="<?php echo $heading_title; ?>" class="js-img_product_thumbnail b-product_thumbnail-image" data-lgimg="" data-thumbnailindex="0" data-zoomimg="" src="<?php echo $img['thumb'];?>" title="<?php echo $heading_title; ?>">
                        </li>
                        <?php } ?>
                    </ul><!-- /b-product_thumbnails -->
                </div>
                <div class="b-product_primary_image js-product_primary_image">
                    <div class="product-image js-container_main_image">
                        <div class="b-video_container js-video_placement"></div>
                        <img alt="<?php echo $heading_title; ?>" class="js-producttile_image b-product_image js-primary_image" data-imageindex="" data-zoom-image="" src="<?php echo $thumb; ?>" title="<?php echo $heading_title; ?>">
                        <img itemprop="image" src="" style="display:none">
                    </div>
                </div><!-- /b-product_primary_image -->
            </div>
        </div><!-- /l-product_images_container -->

        <div class="l-product-details js-product_detail js-product_detail-fixed-images">
            <div class="l-product-details-wrapper">
                <div class="b-product_content js-product_content">
                    <h1 class="b-product_container-title"><span class="b-product_name"><?php echo $heading_title; ?></span></h1>
                    <h2 class="b-product_container-price">
                        <div style="" class="b-product_price" itemprop="offers" itemscope="" itemtype="http://schema.org/Offer">
                            <h4 style="" class="b-product_price-standard "><?php echo $price; ?></h4>
                            <meta itemprop="price" content="<?php echo $price; ?>">
                            <meta itemprop="priceCurrency" content="EUR">
                            <meta itemprop="availability" itemtype="http://schema.org/ItemAvailability" content="http://schema.org/InStock">
                        </div>
                    </h2>
                    <div class="js-product_number h-hidden">
                        Товар <span itemprop="productID"><?php echo $model; ?></span>
                    </div>

                    <div class="js-product_variations b-product_variations--pdp" data-current="{}">
                        <div class="b-variation">
                            <ul class="b-variation-list">
                                <li class="b-variation-item">
                                    <div class="b-variation-dropdown">
                                        <div class="b-variation-value color">
                                            <span class="b-variation-title">цвет</span> <span class="js_color-description">Черный</span>
                                            <ul class="js-swatches b-swatches_color">
                                                <?php //foreach () { ?>
                                                <li class="b-swatches_color-item b-swatches_color-item-selected">
                                                    <a class="js-swatches_color-link js-swatches_color-link-selected b-swatches_color-link-selected b-swatches_color-link" data-lgimg="{&quot;url&quot;:&quot;http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwa582dcac/images/zoom/F61D5TFMME1_S8031_0.jpg?sw=804&amp;sh=1200&amp;sm=fit&quot;, &quot;title&quot;:&quot;ПЛАТЬЕ А-СИЛУЭТА ИЗ ШЕРСТЯНОГО ТВИДА&quot;, &quot;alt&quot;:&quot;ПЛАТЬЕ А-СИЛУЭТА ИЗ ШЕРСТЯНОГО ТВИДА&quot;, &quot;hires&quot;:&quot;http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwa582dcac/images/zoom/F61D5TFMME1_S8031_0.jpg?sw=1571&amp;sh=2000&amp;sm=fit&quot;}" data-thumbs=".js-thumbs-F61D5TFMME1S8031" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%BE%D0%B4%D0%B5%D0%B6%D0%B4%D0%B0/%D0%BF%D0%BB%D0%B0%D1%82%D1%8C%D1%8F/%D0%BF%D0%BB%D0%B0%D1%82%D1%8C%D0%B5-%D0%B0-%D1%81%D0%B8%D0%BB%D1%83%D1%8D%D1%82%D0%B0-%D0%B8%D0%B7-%D1%88%D0%B5%D1%80%D1%81%D1%82%D1%8F%D0%BD%D0%BE%D0%B3%D0%BE-%D1%82%D0%B2%D0%B8%D0%B4%D0%B0-%D1%87%D0%B5%D1%80%D0%BD%D1%8B%D0%B9-F61D5TFMME1S8031.html" style="background-color: #000000;" title="Черный"></a>
                                                </li>
                                                <?php //} ?>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                                <li class="b-variation-item b-variation-item--size">
                                    <div class="b-variation-dropdown">
                                        <div class="b-variation-value Size">
                                            <div class="b-variation-title">
                                                Size
                                            </div>
                                            <div class="b-variation-size_chart_link js-size_chart_link" data-href="http://store.dolcegabbana.com/ru/sizeguide_women_clothing.html">
                                                <span>Как выбрать размер?</span>
                                            </div>
                                            <ul class="js-swatches b-swatches_size">
                                                <?php //foreach () { ?>
                                                <li class="b-swatches_size-item emptyswatch">
                                                    <a class="js-swatchanchor js-togglerhover b-swatches_size-link" data-togglerhover-slider=".js_low-in-stock-msg" data-variantattribute="size" href="http://store.dolcegabbana.com/on/demandware.store/Sites-dolcegabbana-Site/ru/Product-Variation?pid=F61D5TFMME1S8031&amp;dwvar_F61D5TFMME1S8031_size=36" title="36">36 <span class="b-variation-few_left_message js_low-in-stock-msg" data-attr-value="36"></span></a>
                                                </li>
                                                <?php //} ?>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="b-variation-error_message js-error_variations">
                                        Пожалуйста, выберите размер
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="js-notifyme_form-wrapper h-hidden">
                        <form class="b-notifyme_form js-notifyme_container" novalidate="novalidate">
                            <span class="b-notifyme_form-message_not_available">Этот товар недоступен в настоящее время.</span> <span class="b-notifyme_form-message_notify">Оповестить меня, когда он снова будет доступен.</span>
                            <div class=" f-field f-field-email js-notifyme_email f-state-required" data-required-text="Пожалуйста, введите Email" data-valid-text="">
                                <label class="f-label" for="dwfrm_notifyme_email"><span class="f-label-value">Email</span></label>
                                <div class="f-field-wrapper">
                                    <input class="f-email f-state-required" id="dwfrm_notifyme_email" maxlength="50" name="dwfrm_notifyme_email" type="email"> <span class="f-error_message"><span class="f-error_message-block"></span></span> <span class="f-warning_message"><span class="f-warning_message-block"><span class="f-warning_text"></span></span></span>
                                </div>
                            </div><input name="pid" type="hidden" value="F61D5TFMME1S8031"> <button class="b-notifyme_form-submit js-notify_me_submit" type="button"><span>Подтвердить</span></button>
                            <div class="b-notifyme_form-privacy">
                                <span>Подтверждая, Вы соглашаетесь с нашей</span> <a class="b-notifyme_form-privacy_link" href="privacy-policy.html" id="privacyPolicyNL" target="_blank" title="Политика конфиденциальности">Политика конфиденциальности</a>
                            </div>
                        </form>
                    </div>
                    <div class="b-product_add_to_cart">
                        <form action="" class="js-form_pdp" id="dwfrm_product_addtocart_d0nlllyfdaqo" method="post" name="dwfrm_product_addtocart_d0nlllyfdaqo" novalidate="novalidate">
                            <div class="inventory h-hidden">
                                <div class="quantity">
                                    <input class="input-text js-product_quantity" data-available="0" id="Quantity" maxlength="3" name="Quantity" size="2" type="hidden" value="1">
                                </div>
                            </div><input id="cartAction" name="cartAction" type="hidden" value="add"> <input class="js-product_id" id="pid" name="pid" type="hidden" value="F61D5TFMME1S8031"> <input class="js-product_price-value" name="price" type="hidden" value="0.0"> <button class="js-add_to_cart b-product_add_to_cart-submit" title="В корзину" type="submit" value="В корзину">В корзину</button>
                        </form>
                    </div><!--  end details block -->
                    <div class="b-add_to_wishlist js-add_to_wishlist" data-href="/ru/wishlist-add?format=ajax&amp;pid=F61D5TFMME1S8031&amp;source=productdetail&amp;returnUrl=https%3A%2F%2Fstore.dolcegabbana.com%2Fru%2Fmy-wishlist">
                        В список желаний
                    </div>
                    <div class="b-add_to_wishlist-added_message js-added_to_wishlist">
                        Этот товар добавлен в Ваш список желаний
                    </div>
                </div>
                <div class="b-product_share">
                    <span class="b-product_share-text"></span>
                    <div class="b-product_share-content">
                        <a class="js-send_to_friend b-product_share-send_to_friend" href="" title="Отправить другу"><span>Отправить другу</span></a>
                        <div class="social-share-bar" data-popup="menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600">
                            <a class="social-share-button facebook" data-share="facebook" href="" target="_blank" title="Facebook"></a>
                            <a class="social-share-button twitter" data-share="twitter" href="" target="_blank" title="Twitter"></a>
                            <a class="social-share-button js-social_pinterest pinterest" data-share="pinterest" href="javascript:;" title="Pinterest"></a>
                            <a class="social-share-button googleplus" data-share="googleplus" href="" target="_blank" title="Google+"></a>
                        </div>
                    </div>
                </div>
                <div class="b-customer_service_button">
                    <a class="js-pdp_need_help_link" href="customer-care" title="Customer Service">Нужна помощь?</a>
                </div>
                <div class="js-pdp_need_help_link_container h-minimized">
                    <div class="b-content_asset b-content_asset--pdp-need-help content-asset">
                        <div class="pdp-need-help">
                            <p class="pdp-need-help-title">Нужна помощь?</p>
                            <p>Если Вам нужна помощь, пожалуйста, свяжитесь с нами:</p><br>
                            <div align="center">
                                <a href=""><button class="button" type="button">CONTACT US</button></a>
                            </div><br>
                            <p class="pdp-need-help-title">Клиентская служба</p>
                        </div>
                    </div><!-- End content-asset pdp-need-help -->
                </div>
            </div>
            <div class="b-product_tabs js-product_tabs ui-tabs ui-widget ui-corner-all">
                <ul class="b-product_tabs-menu ui-tabs-nav ui-helper-reset ui-helper-clearfix ui-widget-header ui-corner-all" role="tablist">
                    <li aria-controls="tab1" aria-expanded="true" aria-labelledby="ui-id-1" aria-selected="true" class="b-product_tabs-item b-product_tabs-item_1 ui-state-default ui-corner-top ui-tabs-active ui-state-active" role="tab" tabindex="0">
                        <a class="b-product_tabs-link ui-tabs-anchor" href="#tab1" id="ui-id-1" role="presentation" tabindex="-1"><?php echo $tab_description; ?></a>
                    </li>
                    <li aria-controls="tab2" aria-expanded="false" aria-labelledby="ui-id-2" aria-selected="false" class="b-product_tabs-item b-product_tabs-item_2 ui-state-default ui-corner-top" role="tab" tabindex="-1">
                        <a class="b-product_tabs-link ui-tabs-anchor" href="#tab2" id="ui-id-2" role="presentation" tabindex="-1">Уход и детали</a>
                    </li>
                    <li aria-controls="tab3" aria-expanded="false" aria-labelledby="ui-id-3" aria-selected="false" class="b-product_tabs-item b-product_tabs-item_3 ui-state-default ui-corner-top" role="tab" tabindex="-1">
                        <a class="b-product_tabs-link ui-tabs-anchor" href="#tab3" id="ui-id-3" role="presentation" tabindex="-1">Доставка и возврат</a>
                    </li>
                </ul>
                <div aria-hidden="false" aria-labelledby="ui-id-1" class="b-product_tabs-content b-product_tabs-details b-product_tabs-content_1 ui-tabs-panel ui-widget-content ui-corner-bottom" id="tab1" role="tabpanel">
                    <div class="b-product_long_description">
                        <?php echo $description; ?>
                    </div>
                    <span class="b-product_tabs-label">материал</span>
                    <div class="b-product_material">
                        <br>
                    </div>
                    <div class="b-product_master_id">
                        <?php echo $text_model.' '.$model; ?>
                    </div>
                </div>
                <div aria-hidden="true" aria-labelledby="ui-id-2" class="b-product_tabs-content b-product_tabs-content_2 ui-tabs-panel ui-widget-content ui-corner-bottom" id="tab2" role="tabpanel" style="display: none;">
                    <div class="b-care_details-content js-care_details-content">
                        Состав снаружи: 70% шерсть, 16% нейлон, 5% хлопок, 5% акрил, 4% полиэстер.<br>
                        Состав внутри: 94% шёлк, 6% эластан.
                    </div>
                </div>
                <div aria-hidden="true" aria-labelledby="ui-id-3" class="b-product_tabs-content b-product_tabs-content_3 ui-tabs-panel ui-widget-content ui-corner-bottom" id="tab3" role="tabpanel" style="display: none;">
                    Вы можете найти информацию о доставке и возвате <a href="shippinginfo" target="_blank"><b>здесь</b></a>
                </div>
            </div>
        </div>
    </div>

    <div class="b-product_you-may-also-like">
        <div class="b-product_you-may-also-like-heading">Носить с</div>

        <div class="l-recommendations js-recommendations_block">
            <div class="js-carousel l-product_carousel  horizontal_carousel disable-carousel-buttons">
                <div class="jcarousel-clip jcarousel-clip-horizontal" data-settings="">
                    <ul class="l-product_carousel-list js-product_carousel-list">
                        <?php //foreach () { ?>
                        <li class="js-product_tile_wrapper l-product_tile_wrapper">
                            <div class="analytics js-capture_product_id b-capture_product_id">WEI6F2W0001ZOO00</div>
                            <div class="b-product_tile js-product_tile   " id="13656d1f57e0e36fc42afa454c" data-itemid="WEI6F2W0001ZOO00" data-product-name="СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ">
                                <div class="b-product-hover_box js-product-hover_box">
                                    <a class="js-producttile_link b-product_image-wrapper" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D1%8E%D0%B2%D0%B5%D0%BB%D0%B8%D1%80%D0%BD%D1%8B%D0%B5-%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%8F-%D0%B8-%D0%B1%D0%B8%D0%B6%D1%83%D1%82%D0%B5%D1%80%D0%B8%D1%8F/%D1%81%D0%B5%D1%80%D1%8C%D0%B3%D0%B8-%D0%BF%D0%BE%D0%B4%D0%B2%D0%B5%D1%81%D0%BA%D0%B8-%D1%81-%D0%B4%D1%80%D0%B0%D0%B3%D0%BE%D1%86%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8-%D0%B0%D0%BF%D0%BF%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F%D0%BC%D0%B8-%D0%B7%D0%BE%D0%BB%D0%BE%D1%82%D0%BE%D0%B9-WEI6F2W0001ZOO00.html" title="СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ" data-altimage="http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw08abf3ee/images/zoom/WEI6F2W0001_ZOO00_1.jpg?sw=804&amp;sh=1200&amp;sm=fit">
                                        <img class="js-producttile_image b-product_image " src="http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw6ea3ef1f/images/zoom/WEI6F2W0001_ZOO00_0.jpg?sw=804&amp;sh=1200&amp;sm=fit" alt="СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ" title="СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ">
                                    </a>
                                    <div class="b-productile_hover">
                                        <div class="b-productile_hover-inner">
                                            <div class="b-productile_hover-middle_box">
                                                <div class="b-productile_hover-middle_box_inner">
                                                    <div class="js-product_variations b-product_variations--plp" data-current="{&quot;size&quot;:{&quot;displayName&quot;:&quot;Size&quot;,&quot;value&quot;:&quot;OneSize&quot;,&quot;displayValue&quot;:&quot;OneSize&quot;}}">
                                                        <div class="b-variation">
                                                            <ul class="b-variation-list">
                                                                <li class="b-variation-item b-variation-item--size">
                                                                    <div class="b-variation-dropdown">
                                                                        <div class="b-variation-value Size">
                                                                        <div class="b-variation-title">Выбрать Size</div>
                                                                            <ul class="js-swatches b-swatches_size">
                                                                                <li class="b-swatches_size-item b-swatches_size-item-selected">
                                                                                    <span class="b-swatches_size-link">OneSize</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="b-variation-item">
                                                                    <div class="b-variation-dropdown">
                                                                        <div class="b-variation-value color">
                                                                            <span class="b-variation-title">цвет</span>
                                                                            <span class="js_color-description">Золотой</span>
                                                                            <ul class="js-swatches b-swatches_color">
                                                                                <li class="b-swatches_color-item  b-swatches_color-item-selected">
                                                                                    <a href="/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D1%8E%D0%B2%D0%B5%D0%BB%D0%B8%D1%80%D0%BD%D1%8B%D0%B5-%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%8F-%D0%B8-%D0%B1%D0%B8%D0%B6%D1%83%D1%82%D0%B5%D1%80%D0%B8%D1%8F/%D1%81%D0%B5%D1%80%D1%8C%D0%B3%D0%B8-%D0%BF%D0%BE%D0%B4%D0%B2%D0%B5%D1%81%D0%BA%D0%B8-%D1%81-%D0%B4%D1%80%D0%B0%D0%B3%D0%BE%D1%86%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8-%D0%B0%D0%BF%D0%BF%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F%D0%BC%D0%B8-%D0%B7%D0%BE%D0%BB%D0%BE%D1%82%D0%BE%D0%B9-WEI6F2W0001ZOO00.html" title="Золотой" class="js-swatches_color-link  js-swatches_color-link-selected b-swatches_color-link-selected  b-swatches_color-link" data-lgimg="{&quot;url&quot;:&quot;http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw6ea3ef1f/images/zoom/WEI6F2W0001_ZOO00_0.jpg?sw=804&amp;sh=1200&amp;sm=fit&quot;, &quot;title&quot;:&quot;СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ&quot;, &quot;alt&quot;:&quot;СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ&quot;, &quot;hires&quot;:&quot;http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw6ea3ef1f/images/zoom/WEI6F2W0001_ZOO00_0.jpg?sw=1571&amp;sh=2000&amp;sm=fit&quot;}" style="background-color: #FFD700;" data-thumbs=".js-thumbs-WEI6F2W0001ZOO00"></a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <span class="b-quickview js-quickview" data-options="{&quot;wrapCSS&quot;:&quot;b-quickview-wrapper&quot;}" data-url="http://store.dolcegabbana.com/on/demandware.store/Sites-dolcegabbana-Site/ru/Product-OpenQuickView?pid=WEI6F2W0001ZOO00">
                                                        Быстрая покупка
                                                    </span>
                                                    <span class="b-add_to_wishlist b-product_tile-add_to_wishlist js-add_to_wishlist" data-href="/ru/wishlist-add?pid=WEI6F2W0001ZOO00&amp;source=search">
                                                        В список желаний
                                                    </span>
                                                </div>
                                                <a class="js-producttile_name b-product_name product_name" href="/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D1%8E%D0%B2%D0%B5%D0%BB%D0%B8%D1%80%D0%BD%D1%8B%D0%B5-%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%8F-%D0%B8-%D0%B1%D0%B8%D0%B6%D1%83%D1%82%D0%B5%D1%80%D0%B8%D1%8F/%D1%81%D0%B5%D1%80%D1%8C%D0%B3%D0%B8-%D0%BF%D0%BE%D0%B4%D0%B2%D0%B5%D1%81%D0%BA%D0%B8-%D1%81-%D0%B4%D1%80%D0%B0%D0%B3%D0%BE%D1%86%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8-%D0%B0%D0%BF%D0%BF%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F%D0%BC%D0%B8-%D0%B7%D0%BE%D0%BB%D0%BE%D1%82%D0%BE%D0%B9-WEI6F2W0001ZOO00.html" title="СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ">
                                                    СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a class="js-producttile_name b-product_name product_name" href="/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D1%8E%D0%B2%D0%B5%D0%BB%D0%B8%D1%80%D0%BD%D1%8B%D0%B5-%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%8F-%D0%B8-%D0%B1%D0%B8%D0%B6%D1%83%D1%82%D0%B5%D1%80%D0%B8%D1%8F/%D1%81%D0%B5%D1%80%D1%8C%D0%B3%D0%B8-%D0%BF%D0%BE%D0%B4%D0%B2%D0%B5%D1%81%D0%BA%D0%B8-%D1%81-%D0%B4%D1%80%D0%B0%D0%B3%D0%BE%D1%86%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8-%D0%B0%D0%BF%D0%BF%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F%D0%BC%D0%B8-%D0%B7%D0%BE%D0%BB%D0%BE%D1%82%D0%BE%D0%B9-WEI6F2W0001ZOO00.html" title="СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ">
                                    СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ
                                </a>
                                <div style="" class="b-product_price">
                                    <h4 style="" class="b-product_price-standard ">€1.220</h4>
                                </div>
                                <div class="b-product_labels"></div>
                                        <!-- i.e. for category pages and productlistings, is multiple -->
                                <div class="b-stars" id="pr_snippet_category_f7b999d0e420bf0005dffeaee1">
                                    <script type="text/javascript">
                                    if (typeof POWERREVIEWS != "undefined") { 
                                        POWERREVIEWS.display.snippet({write : function(content) { jQuery('#pr_snippet_category_f7b999d0e420bf0005dffeaee1').append(content); }}, 
                                            {
                                                pr_page_id : 'WEI6F2W0001ZOO00', 
                                                pr_snippet_min_reviews : '0'
                                            }
                                        )
                                    }
                                    </script>
                                </div>
                            </div>
                        </li>
                        <li class="js-product_tile_wrapper l-product_tile_wrapper">
                            <div class="analytics js-capture_product_id b-capture_product_id">WEI6F2W0001ZOO00</div>
                            <div class="b-product_tile js-product_tile   " id="13656d1f57e0e36fc42afa454c" data-itemid="WEI6F2W0001ZOO00" data-product-name="СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ">
                                <div class="b-product-hover_box js-product-hover_box">
                                    <a class="js-producttile_link b-product_image-wrapper" href="http://store.dolcegabbana.com/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D1%8E%D0%B2%D0%B5%D0%BB%D0%B8%D1%80%D0%BD%D1%8B%D0%B5-%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%8F-%D0%B8-%D0%B1%D0%B8%D0%B6%D1%83%D1%82%D0%B5%D1%80%D0%B8%D1%8F/%D1%81%D0%B5%D1%80%D1%8C%D0%B3%D0%B8-%D0%BF%D0%BE%D0%B4%D0%B2%D0%B5%D1%81%D0%BA%D0%B8-%D1%81-%D0%B4%D1%80%D0%B0%D0%B3%D0%BE%D1%86%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8-%D0%B0%D0%BF%D0%BF%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F%D0%BC%D0%B8-%D0%B7%D0%BE%D0%BB%D0%BE%D1%82%D0%BE%D0%B9-WEI6F2W0001ZOO00.html" title="СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ" data-altimage="http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw08abf3ee/images/zoom/WEI6F2W0001_ZOO00_1.jpg?sw=804&amp;sh=1200&amp;sm=fit">
                                        <img class="js-producttile_image b-product_image " src="http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw6ea3ef1f/images/zoom/WEI6F2W0001_ZOO00_0.jpg?sw=804&amp;sh=1200&amp;sm=fit" alt="СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ" title="СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ">
                                    </a>
                                    <div class="b-productile_hover">
                                        <div class="b-productile_hover-inner">
                                            <div class="b-productile_hover-middle_box">
                                                <div class="b-productile_hover-middle_box_inner">
                                                    <div class="js-product_variations b-product_variations--plp" data-current="{&quot;size&quot;:{&quot;displayName&quot;:&quot;Size&quot;,&quot;value&quot;:&quot;OneSize&quot;,&quot;displayValue&quot;:&quot;OneSize&quot;}}">
                                                        <div class="b-variation">
                                                            <ul class="b-variation-list">
                                                                <li class="b-variation-item b-variation-item--size">
                                                                    <div class="b-variation-dropdown">
                                                                        <div class="b-variation-value Size">
                                                                        <div class="b-variation-title">Выбрать Size</div>
                                                                            <ul class="js-swatches b-swatches_size">
                                                                                <li class="b-swatches_size-item b-swatches_size-item-selected">
                                                                                    <span class="b-swatches_size-link">OneSize</span>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                                <li class="b-variation-item">
                                                                    <div class="b-variation-dropdown">
                                                                        <div class="b-variation-value color">
                                                                            <span class="b-variation-title">цвет</span>
                                                                            <span class="js_color-description">Золотой</span>
                                                                            <ul class="js-swatches b-swatches_color">
                                                                                <li class="b-swatches_color-item  b-swatches_color-item-selected">
                                                                                    <a href="/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D1%8E%D0%B2%D0%B5%D0%BB%D0%B8%D1%80%D0%BD%D1%8B%D0%B5-%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%8F-%D0%B8-%D0%B1%D0%B8%D0%B6%D1%83%D1%82%D0%B5%D1%80%D0%B8%D1%8F/%D1%81%D0%B5%D1%80%D1%8C%D0%B3%D0%B8-%D0%BF%D0%BE%D0%B4%D0%B2%D0%B5%D1%81%D0%BA%D0%B8-%D1%81-%D0%B4%D1%80%D0%B0%D0%B3%D0%BE%D1%86%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8-%D0%B0%D0%BF%D0%BF%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F%D0%BC%D0%B8-%D0%B7%D0%BE%D0%BB%D0%BE%D1%82%D0%BE%D0%B9-WEI6F2W0001ZOO00.html" title="Золотой" class="js-swatches_color-link  js-swatches_color-link-selected b-swatches_color-link-selected  b-swatches_color-link" data-lgimg="{&quot;url&quot;:&quot;http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw6ea3ef1f/images/zoom/WEI6F2W0001_ZOO00_0.jpg?sw=804&amp;sh=1200&amp;sm=fit&quot;, &quot;title&quot;:&quot;СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ&quot;, &quot;alt&quot;:&quot;СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ&quot;, &quot;hires&quot;:&quot;http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dw6ea3ef1f/images/zoom/WEI6F2W0001_ZOO00_0.jpg?sw=1571&amp;sh=2000&amp;sm=fit&quot;}" style="background-color: #FFD700;" data-thumbs=".js-thumbs-WEI6F2W0001ZOO00"></a>
                                                                                </li>
                                                                            </ul>
                                                                        </div>
                                                                    </div>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                    <span class="b-quickview js-quickview" data-options="{&quot;wrapCSS&quot;:&quot;b-quickview-wrapper&quot;}" data-url="http://store.dolcegabbana.com/on/demandware.store/Sites-dolcegabbana-Site/ru/Product-OpenQuickView?pid=WEI6F2W0001ZOO00">
                                                        Быстрая покупка
                                                    </span>
                                                    <span class="b-add_to_wishlist b-product_tile-add_to_wishlist js-add_to_wishlist" data-href="/ru/wishlist-add?pid=WEI6F2W0001ZOO00&amp;source=search">
                                                        В список желаний
                                                    </span>
                                                </div>
                                                <a class="js-producttile_name b-product_name product_name" href="/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D1%8E%D0%B2%D0%B5%D0%BB%D0%B8%D1%80%D0%BD%D1%8B%D0%B5-%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%8F-%D0%B8-%D0%B1%D0%B8%D0%B6%D1%83%D1%82%D0%B5%D1%80%D0%B8%D1%8F/%D1%81%D0%B5%D1%80%D1%8C%D0%B3%D0%B8-%D0%BF%D0%BE%D0%B4%D0%B2%D0%B5%D1%81%D0%BA%D0%B8-%D1%81-%D0%B4%D1%80%D0%B0%D0%B3%D0%BE%D1%86%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8-%D0%B0%D0%BF%D0%BF%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F%D0%BC%D0%B8-%D0%B7%D0%BE%D0%BB%D0%BE%D1%82%D0%BE%D0%B9-WEI6F2W0001ZOO00.html" title="СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ">
                                                    СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ
                                                </a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <a class="js-producttile_name b-product_name product_name" href="/ru/%D0%B6%D0%B5%D0%BD%D1%81%D0%BA%D0%BE%D0%B5/%D0%B0%D0%BA%D1%81%D0%B5%D1%81%D1%81%D1%83%D0%B0%D1%80%D1%8B/%D1%8E%D0%B2%D0%B5%D0%BB%D0%B8%D1%80%D0%BD%D1%8B%D0%B5-%D0%B8%D0%B7%D0%B4%D0%B5%D0%BB%D0%B8%D1%8F-%D0%B8-%D0%B1%D0%B8%D0%B6%D1%83%D1%82%D0%B5%D1%80%D0%B8%D1%8F/%D1%81%D0%B5%D1%80%D1%8C%D0%B3%D0%B8-%D0%BF%D0%BE%D0%B4%D0%B2%D0%B5%D1%81%D0%BA%D0%B8-%D1%81-%D0%B4%D1%80%D0%B0%D0%B3%D0%BE%D1%86%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC%D0%B8-%D0%B0%D0%BF%D0%BF%D0%BB%D0%B8%D0%BA%D0%B0%D1%86%D0%B8%D1%8F%D0%BC%D0%B8-%D0%B7%D0%BE%D0%BB%D0%BE%D1%82%D0%BE%D0%B9-WEI6F2W0001ZOO00.html" title="СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ">
                                    СЕРЬГИ-ПОДВЕСКИ С ДРАГОЦЕННЫМИ АППЛИКАЦИЯМИ
                                </a>
                                <div style="" class="b-product_price">
                                    <h4 style="" class="b-product_price-standard ">€1.220</h4>
                                </div>
                                <div class="b-product_labels"></div>
                                        <!-- i.e. for category pages and productlistings, is multiple -->
                                <div class="b-stars" id="pr_snippet_category_f7b999d0e420bf0005dffeaee1">
                                    <script type="text/javascript">
                                    if (typeof POWERREVIEWS != "undefined") { 
                                        POWERREVIEWS.display.snippet({write : function(content) { jQuery('#pr_snippet_category_f7b999d0e420bf0005dffeaee1').append(content); }}, 
                                            {
                                                pr_page_id : 'WEI6F2W0001ZOO00', 
                                                pr_snippet_min_reviews : '0'
                                            }
                                        )
                                    }
                                    </script>
                                </div>
                            </div>
                        </li>
                        <?php //} ?>
                    </ul>
                </div>
            </div>

            <div class="loader" style="display: none;">
                <div class="loader-indicator"></div>
                <div class="loader-bg"></div>
            </div>
        </div>


    </div>

</main>





<?php echo $footer; ?>
