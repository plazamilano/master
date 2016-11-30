
<?php if ( isset($_GET['route']) AND $_GET['route'] == 'checkout/cart' ) { ?>
<footer class="l-footer_checkout">
    <div class="b-copyright_footer"><a href="<?php echo $home; ?>" target="_blank">Site</a> - managed by The Level Group S.r.l - Copyright © Dolce &amp; Gabbana S.r.l. 2016 – All rights reserved - any reproduction of the contents is strictly forbidden</div>
</footer>
<?php } else { ?>

<footer class="l-footer js-footer_container" data-slide-disabled="true" id="footer" role="contentinfo">
    <div class="l-footer_top">
        <div class="l-footer_top-locale">
            <div class="l-footer_top-country">
                <div class="l-footer_top-locale-labels">
                    <?php echo $text_country; ?>:
                </div>
                <div class="l-footer_top-locale-selectors">
                    <span class="b-language_selector-current_language">Украина</span> <span class="l-footer_top-locale-selectors-change js-toggler"
                                data-close-element=".country-selector-close"
                                data-slide=".js-footer_min_country_selector"
                                data-toggle-class="h-minimized"
                                data-toggle-closeonesc="yes"
                                data-toggle-closeonoutsideclick="yes" data-toggle-elem-class="h-toggled">(<?php echo $text_change; ?>)</span>
                    <div class="b-country_selector-flyout js-footer_min_country_selector js-toggler-slide h-minimized">
                        <div class="b-country_selector-container">
                            <div class="b-country_selector-country">
                                <h3><?php echo $text_select_country; ?></h3>
                                <p class="b-language_selector-country_title"><?php echo $text_select_country; ?></p>
                                <ul class="b-language_selector-country_list">
                                    <?php foreach ($countries as $countri) { ?>
                                    <li class="b-language_selector-country_item">
                                        <a class="b-language_selector-country_link js-country_selection-link" href="select-country?Country=<?php echo $countri['iso_code_2']; ?>"><?php echo $countri['name']; ?></a>
                                    </li>
                                    <?php } ?>
                                    <li class="b-language_selector-country_item">
                                        <a class="b-language_selector-country_link" href="CountryGateway-Start" title="Больше стран"><?php echo $text_more_country; ?></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="l-close country-selector-close"></div>
                    </div>
                </div>
            </div>
            <div class="l-footer_top-language">
                <div class="l-footer_top-locale-labels">
                    <?php echo $text_language; ?>:
                </div>
                <div class="l-footer_top-locale-selectors">
                    <div class="b-language_selector">
                        <span><?php echo $languages[$language_code]['name'];?></span> <span class="b-language_selector-change js-toggler"
                                    data-close-element=".lang-selector-close"
                                    data-slide=".js-footer_min_language_selector"
                                    data-toggle-class="h-minimized"
                                    data-toggle-closeonesc="yes"
                                    data-toggle-closeonoutsideclick="yes" data-toggle-elem-class="h-toggled">(<?php echo $text_change; ?>)</span>
                        <div class="b-language_selector-flyout js-footer_min_language_selector js-toggler-slide h-minimized">
                            <div class="b-language_selector-container">
                                <div class="b-language_selector-language">
                                    <h3><?php echo $text_select_language; ?></h3>
                                    <ul class="b-language_selector-language_list">
                                        <?php foreach ($languages as $lang) { ?>
                                        <li class="b-language_selector-language_item">
                                            <?php $html = '/'.$lang['code'].'/'.$url_no_lang; ?>
                                            <a class="b-language_selector-language_link js-language_selector_link" href="<?php echo str_replace('//','/',$html);?>"><?php echo $lang['name'];?> (<?php echo $lang['code'];?>)</a>
                                        </li>
                                        <?php } ?>
                                    </ul>
                                </div>
                            </div>
                            <div class="l-close lang-selector-close"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="l-footer_top-newsletter">
        </div>
    </div>

    <div class="l-footer_bottom-navigation">
        <ul class="l-footer_bottom-navigation_list">
            <li style="list-style: none; display: inline">
                <div class="b-content_asset b-content_asset--footer-misc-links content-asset">
                    <ul class="b-footer_bottom-navigation_list">
                        <li class="b-footer_bottom-navigation_item top-category">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link"
                            href="/<?php echo $language_href; ?>customer-care"><?php echo $text_customer_care; ?></a></h6>
                        </li>
                        <?php if ($informations) { ?>
                        <?php foreach ($informations as $information) { ?>
                        <li class="b-footer_bottom-navigation_item subcategory">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="<?php echo $language_href.$information['href']; ?>"><?php echo $information['title']; ?></a></h6>
                        </li>
                        <?php } ?>
                        <?php } ?>

                        <li class="b-footer_bottom-navigation_item subcategory">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="/<?php echo $language_href; ?>contact_us"><?php echo $text_contact; ?></a></h6>
                        </li>
                        <!--li class="b-footer_bottom-navigation_item subcategory">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="<?php echo $language_href.$return; ?>"><?php echo $text_return; ?></a></h6>
                        </li-->
                        <!--li class="b-footer_bottom-navigation_item subcategory">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="<?php echo $language_href.$sitemap; ?>"><?php echo $text_sitemap; ?></a></h6>
                        </li-->
                        <li class="b-footer_bottom-navigation_item subcategory">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="/<?php echo $language_href; ?>brands"><?php echo $text_manufacturer; ?></a></h6>
                        </li>
                        <!--li class="b-footer_bottom-navigation_item subcategory">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="<?php echo $language_href.$voucher; ?>"><?php echo $text_voucher; ?></a></h6>
                        </li-->
                        <!--li class="b-footer_bottom-navigation_item subcategory">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="<?php echo $language_href.$affiliate; ?>"><?php echo $text_affiliate; ?></a></h6>
                        </li-->
                        <!--li class="b-footer_bottom-navigation_item subcategory">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="<?php echo $language_href.$special; ?>"><?php echo $text_special; ?></a></h6>
                        </li-->
                        <li class="b-footer_bottom-navigation_item subcategory">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="/<?php echo $language_href; ?>account"><?php echo $text_account; ?></a></h6>
                        </li>
                        <li class="b-footer_bottom-navigation_item subcategory">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="/<?php echo $language_href; ?>order"><?php echo $text_order; ?></a></h6>
                        </li>
                        <li class="b-footer_bottom-navigation_item subcategory">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="/<?php echo $language_href; ?>wishlist"><?php echo $text_wishlist; ?></a></h6>
                        </li>
                        <li class="b-footer_bottom-navigation_item subcategory">
                            <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="/<?php echo $language_href; ?>newsletter"><?php echo $text_newsletter; ?></a></h6>
                        </li>
                    </ul>
                </div>
            </li>
            <?php if ( isset($categories) ) {  ?>
            <?php foreach ($categories as $category) { ?>
            <li class="l-footer_bottom-navigation_list-item">
                <ul class="b-footer_bottom-navigation_list">
                    <li class="b-footer_bottom-navigation_item top-category">
                        <h6 class="b-footer_bottom-navigation_title"><span class="b-footer_bottom-navigation_link"><?php echo $category['name']; ?></span></h6>
                    </li>
                    <?php foreach ($category['children'] as $child2) { ?>
                    <li class="b-footer_bottom-navigation_item subcategory">
                        <h6 class="b-footer_bottom-navigation_title"><a class="b-footer_bottom-navigation_link" href="/<?php echo $language_href.$child2['href']; ?>" rel="nofollow"><?php echo $child2['name']; ?></a></h6>
                    </li>
                    <?php } ?>
                </ul>
            </li>
            <?php } ?>
            <?php } ?>
        </ul>
    </div>


    <div class="l-footer-copyright_soc">
        <div class="l-footer-copyright_soc-content">
            <div class="l-footer-mini">
                <div class="b-content_asset b-content_asset--mini-footer content-asset">
                    <p><span style="text-transform:uppercase;"><a href="/" target="_blank">Site</a> - managed by The Level Group S.r.l - Copyright © Dolce &amp; Gabbana S.r.l. 2016– All rights reserved- any reproduction of the contents is strictly forbidden.</span></p>
                </div><!-- End content-asset mini-footer -->
            </div>
            <div class="l-social-links">
                <div class="b-content_asset b-content_asset--footer-social-icons content-asset">
                    <ul>
                        <li class="l-social-links-icon">
                            <a class="facebook" href="https://www.facebook.com/DolceGabbana"></a>
                        </li>
                        <li class="l-social-links-icon">
                            <a class="twitter" href="https://twitter.com/dolcegabbana"></a>
                        </li>
                        <li class="l-social-links-icon">
                            <a class="google" href="https://plus.google.com/+DolceGabbana"></a>
                        </li>
                        <li class="l-social-links-icon">
                            <a class="instagram" href="https://www.instagram.com/dolcegabbana/"></a>
                        </li>
                        <li class="l-social-links-icon">
                            <a class="linkedin" href="https://www.linkedin.com/company/dolce-&amp;-gabbana"></a>
                        </li>
                        <li class="l-social-links-icon">
                            <a class="lj" href="http://dolcegabbana.livejournal.com/"></a>
                        </li>
                        <li class="l-social-links-icon">
                            <a class="odn" href="https://ok.ru/dolcegabbana"></a>
                        </li>
                        <li class="l-social-links-icon">
                            <a class="tumblr" href="https://www.tumblr.com/login?redirect_to=%2Fblog%2Fdolcegabbana"></a>
                        </li>
                        <li class="l-social-links-icon">
                            <a class="weibo" href="http://weibo.com/login.php"></a>
                        </li>
                        <li class="l-social-links-icon">
                            <a class="youko" href="http://i.youku.com/i/UMzgxNTkyMzIw"></a>
                        </li>
                        <li class="l-social-links-icon">
                            <a class="youtube" href="https://www.youtube.com/user/dolcegabbanachannel"></a>
                        </li>
                    </ul>
                </div><!-- End content-asset footer-social-icons -->
            </div>
        </div>
    </div>
</footer>

<div class="l-scroll_to_top">
    <div class="b-scroll_to_top js-scroll_to_top h-opaque"></div>
</div>

<? } ?>



<link href="/catalog/view/theme/simplica/stylesheet/owl.carousel.css" rel="stylesheet">
<script src="catalog/view/theme/simplica/js/develop.js" type="text/javascript"></script>




</body></html>