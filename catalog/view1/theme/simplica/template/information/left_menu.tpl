                    <div class="b-customer_service_navigation-section  b-customer_service_navigation-section--first ">
                        <div class="b-customer_service_navigation-category">
                            <ul class="b-customer_service_navigation-list">
                                <?php if ( isset($informations) && $informations ) { ?>
                                <?php foreach ($informations as $information) { ?>
                                <li class="b-customer_service_navigation-list-li ">
                                    <a class="b-customer_service_navigation-link" href="<?php echo $information['href']; ?>" title="<?php echo $information['title']; ?>"><?php echo $information['title']; ?></a>
                                    <div class="b-customer_service_navigation-description">
                                    </div>
                                </li>
                                <?php } ?>
                                <?php } ?>

                                <!-- Временно: -->
                                <li class="b-customer_service_navigation-list-li b-customer_service_navigation-list-li--active">
                                    <a class="b-customer_service_navigation-link" href="index.php?route=information/contact" title="">Обратная связь (active)</a>
                                    <div class="b-customer_service_navigation-description">
                                    </div>
                                </li>
                                <li class="b-customer_service_navigation-list-li">
                                    <a class="b-customer_service_navigation-link" href="index.php?route=information/contact" title="">Обратная связь</a>
                                    <div class="b-customer_service_navigation-description">
                                    </div>
                                </li>
                                <!-- /Временно -->


                            </ul>
                        </div>
                    </div>
