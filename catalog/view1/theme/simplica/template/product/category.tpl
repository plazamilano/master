<?php echo $header; ?>
    <main role="main">
        <noscript>
            <div class="b-js_off_alert">
                <p class="b-js_off_alert-copy">В Вашем браузере выключена функция Javascript. Пожалуйста, включите её, чтобы задействовать все возможности сайта.</p>
            </div>
        </noscript>
        <div class="h-hidden b-cookies_off js-disabled-cookies">
            <p class="b-cookies_off-copy">Ваш браузер в настоящее время не поддерживает Cookies. Пожалуйста, настройте Ваш браузер для приёма Cookies и проверьте, не блокирует ли их другая программа.</p>
        </div>
        <div class="l-primary_content">
            <div class="content-slot b-slot-grid_header">
                <div class="js-category-banner"></div>
            </div>
            <div class="l-search_result-options">
                <div class="l-search_result-wrapper">
                    <div class="l-filter_dropdown js-refinement_visibility">

                        <!-- Хлебные крошки. START -->
                        <div class="l-breadcrumb">
                            <ul class="b-breadcrumb" itemscope itemtype="http://schema.org/BreadcrumbList">
                                <?php $count = 0; ?>
                                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                                    <li class="b-breadcrumb-item" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem" <?php if ($count == 0) { echo ' style="display: none;"';} ?>>
                                        <a  class="b-breadcrumb-link" href="<?php echo $breadcrumb['href']; ?>" itemprop="item" title="<?php echo $breadcrumb['text']; ?>"><span itemprop="name"><?php echo $breadcrumb['text']; ?></span></a>
                                        <meta content="<?php echo $count++; ?>">
                                    </li>
                                <?php } ?>
                            </ul>
                        </div>
                        <!-- Хлебные крошки. END -->


                        <!-- Фильтры. START -->
                        <div class="b-refinement_dropdown">
                            <span class="b-refinement_dropdown-title js-custom-toggler" data-slide=".js-min_refinement_selector" data-toggle-class="h-minimized" data-toggle-closeonoutsideclick="yes" data-toggle-elem-class="h-toggled" data-close-element=".b-filter-close_button">фильтр</span>
                            <div class="b-refinement_dropdown-flyout js-min_refinement_selector h-minimized">
                                <div class="b-refinement_containter">
                                    <div class="b-refinement_containter-sub js-refinement_container">

                                    </div>
                                    <div class="b-filter-buttons">
                                        <div class="b-filter-button_box">
                                            <span class="b-filter-close_button">Закрыть</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Фильтры. END -->


                        <!-- Сортировка. START -->
                        <div class="b-refinement_dropdown">
                            <div class="b-sortby_price_select sort-by">
                                <span class="b-refinement_dropdown-title js-custom-toggler" data-slide=".js-min_sortby_selector" data-toggle-class="h-minimized" data-toggle-closeonoutsideclick="yes" data-toggle-elem-class="h-toggled" data-close-element=".b-filter-close_button">Сортировать по</span>
                                <div class="b-refinement_price_range-value js-min_sortby_selector h-minimized">
                                    <div class="b-refinement_containter">
                                        <?php foreach ($sorts as $sorts) { ?>
                                            <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                                                <a class="b-sortby_price_range-value_link js-sortby_price-value m-active" href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a>
                                            <?php } else { ?>
                                                <a class="b-sortby_price_range-value_link js-sortby_price-value" href="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></a>
                                            <?php } ?>
                                        <?php } ?>
                                        <div class="b-filter-buttons">
                                            <div class="b-filter-button_box">
                                                <span class="b-filter-close_button">Закрыть</span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Сортировка. END -->


                        <!-- Отображение списка товарово (Список/Сетка). START -->
                        <div class="b-filter_view-header b-change_view">
                            <ul class="b-change_view-list">
                                <li style="list-style: none; display: inline">
                                    <div class="h-hidden js-view-selector"></div>
                                </li>
                                <li class="b-change_view-item"><span class="b-change_view-type b-change_view-type_four js-four-columns b-change_view-type-active" data-grid-class="m-four-columns"></span></li>
                                <li class="b-change_view-item"><span class="b-change_view-type b-change_view-type_two js-two-columns" data-grid-class="m-two-columns"></span></li>
                            </ul>
                        </div>
                        <!-- Отображение списка товарово (Список/Сетка). END -->


                        <div class="l-breadcrumb-refinement_container">
                            <div class="js-breadcrumb-refinement_container b-breadcrumb-refinement_container"></div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="content-slot b-slot-grid_header"></div>

            <div class="l-search_result-content js-search_result-content m-search_layout-демонстрация m-four-columns">
                <div class="b-list_item_page js-list_item_page" data-grid-url="http://store.dolcegabbana.com/ru/женское/основные-моменты/tweed/?page=1" data-page="1.0">
                    <div class="l-product_tiles">


                        <?php foreach ($products as $product) { ?>
                        <div class="b-product_tile js-product_tile b-product_tile--1" data-itemid="F61D5TFMME1S8031" data-product-name="<?php echo $product['name']; ?>" id="4982d3b862873672c1ef6a361b">
                            <div class="b-product-hover_box js-product-hover_box">
                                <a class="js-producttile_link b-product_image-wrapper" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>">
                                <img alt="<?php echo $product['name']; ?>" class="js-producttile_image b-product_image" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" data-altimage="<?php echo $product['thumb_second']; ?>" >
                                </a>

                                <div class="b-productile_hover">
                                    <div class="b-productile_hover-inner">
                                        <div class="b-productile_hover-middle_box">
                                            <div class="b-productile_hover-middle_box_inner">
                                                <div class="js-product_variations b-product_variations--plp" data-current="{}">
                                                    <div class="b-variation">
                                                        <ul class="b-variation-list">
                                                            <li class="b-variation-item b-variation-item--size">
                                                                <div class="b-variation-dropdown">
                                                                    <div class="b-variation-value Size">
                                                                        <div class="b-variation-title">
                                                                            Выбрать Size
                                                                        </div>
                                                                        <div class="b-variation-size_chart_link js-size_chart_link" data-href="#">
                                                                            <span>Как выбрать размер?</span>
                                                                        </div>
                                                                        <ul class="js-swatches b-swatches_size">
                                                                            <li class="b-swatches_size-item emptyswatch">
                                                                                <a class="js-togglerhover b-swatches_size-link" data-togglerhover-slider=".js_low-in-stock-msg" data-variantattribute="size" href="<?php echo $product['href']; ?>?size=36" title="36">36 <span class="b-variation-few_left_message js_low-in-stock-msg" data-attr-value="36"></span></a>
                                                                            </li>
                                                                            <li class="b-swatches_size-item emptyswatch">
                                                                                <a class="js-togglerhover b-swatches_size-link" data-togglerhover-slider=".js_low-in-stock-msg" data-variantattribute="size" href="<?php echo $product['href']; ?>?size=38" title="38">38 <span class="b-variation-few_left_message js_low-in-stock-msg" data-attr-value="38"></span></a>
                                                                            </li>
                                                                            <li class="b-swatches_size-item emptyswatch">
                                                                                <a class="js-togglerhover b-swatches_size-link" data-togglerhover-slider=".js_low-in-stock-msg" data-variantattribute="size" href="<?php echo $product['href']; ?>?size=40" title="40">40 <span class="b-variation-few_left_message js_low-in-stock-msg" data-attr-value="40"></span></a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                            <li class="b-variation-item">
                                                                <div class="b-variation-dropdown">
                                                                    <div class="b-variation-value color">
                                                                        <span class="b-variation-title">цвет</span> <span class="js_color-description">Черный</span>
                                                                        <ul class="js-swatches b-swatches_color">
                                                                            <li class="b-swatches_color-item b-swatches_color-item-selected">
                                                                                <a class="js-swatches_color-link js-swatches_color-link-selected b-swatches_color-link-selected b-swatches_color-link" data-lgimg="{&quot;url&quot;:&quot;http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwa582dcac/images/zoom/F61D5TFMME1_S8031_0.jpg?sw=804&amp;sh=1200&amp;sm=fit&quot;, &quot;title&quot;:&quot;ПЛАТЬЕ А-СИЛУЭТА ИЗ ШЕРСТЯНОГО ТВИДА&quot;, &quot;alt&quot;:&quot;ПЛАТЬЕ А-СИЛУЭТА ИЗ ШЕРСТЯНОГО ТВИДА&quot;, &quot;hires&quot;:&quot;http://demandware.edgesuite.net/sits_pod25/dw/image/v2/AAGA_PRD/on/demandware.static/-/Sites-15/default/dwa582dcac/images/zoom/F61D5TFMME1_S8031_0.jpg?sw=1571&amp;sh=2000&amp;sm=fit&quot;}" data-thumbs=".js-thumbs-F61D5TFMME1S8031" href="<?php echo $product['href']; ?>" style="background-color: #000000;" title="Черный"></a>
                                                                            </li>
                                                                        </ul>
                                                                    </div>
                                                                </div>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                                <span class="b-quickview js-quickview" data-options="{&quot;wrapCSS&quot;:&quot;b-quickview-wrapper&quot;}" data-url="http://store.dolcegabbana.com/on/demandware.store/Sites-dolcegabbana-Site/ru/Product-OpenQuickView?pid=F61D5TFMME1S8031">Быстрая покупка</span> <span class="b-add_to_wishlist b-product_tile-add_to_wishlist js-add_to_wishlist" data-href="/ru/wishlist-add?pid=F61D5TFMME1S8031&amp;source=search">В список желаний</span>
                                            </div>
                                            <a class="js-producttile_name b-product_name product_name" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <a class="js-producttile_name b-product_name product_name" href="<?php echo $product['href']; ?>" title="<?php echo $product['name']; ?>"><?php echo $product['name']; ?></a>


                            <div class="b-product_price" style="">
                                <h4 class="b-product_price-standard" style=""><?php echo $product['price']; ?></h4>
                            </div>

                            <div class="b-product_labels"></div><!-- i.e. for category pages and productlistings, is multiple -->

                            <div class="b-stars" id="pr_snippet_category_eb4a072633fc70c126cf01c646">
                                <script type="text/javascript">
                                //if (typeof POWERREVIEWS != "undefined") { 
                                //POWERREVIEWS.display.snippet({write : function(content) { jQuery('#pr_snippet_category_eb4a072633fc70c126cf01c646').append(content); }}, 
                                //{
                                //pr_page_id : 'F61D5TFMME1S8031', 
                                //pr_snippet_min_reviews : '0'
                                //}
                                //)
                                //}
                                </script>
                            </div>
                        </div>
                        <?php } ?>

                    </div>
                </div>
            </div>

        </div>
    </main>

<?php echo $footer; ?>
