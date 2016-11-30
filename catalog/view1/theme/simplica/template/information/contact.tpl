<?php echo $header; ?>

<main role="main" class="l-main_customer_service">
    <div class="l-customer_service">
        <div class="l-customer_service-top">

            <div class="html-slot-container b-slot--customer-service-top">
                <div class="b-customer_service-sub_header" style="padding-left:31%">
                    <div class="b-customer_service-sub_header-sub_title">
                        <div class="b-customer_service-sub_header-right">
                            <div class="b-customer_service-sub_header-title">Написать нам</div>
                            <div class="b-customer_service-sub_header-sub_title">Клиентская служба онлайн</div>
                            <a class="b-customer_service-sub_header-link" href="index.php?route=information/contact">support@dolcegabbana.com</a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="l-customer_service-left">
                <div class="b-customer_service_navigation">
                    <?php //echo $left_menu; ?>
                    <?php include "left_menu.tpl"; ?>
                </div>
            </div>

            <div class="l-customer_service-right">

                <div class="js-customer_service_content b-customer_service_content">
                    <h1 class="b-customer_service_content-title">Связаться с нами</h1>
                    <div class="b-content_asset b-content_asset--contact-form-text content-asset">
                        <div class="content row">
                            <?php //echo $??? ?>
                            <p>Если у Вас возникли вопросы о Вашем заказе или Вы хотите узнать какую-либо общую информацию наша команда клиентской службы будет рада помочь Вам!</p>
                            <p>Пожалуйста, сообщите, как мы можем Вам помочь в управлении Вашим личным кабинетом.</p>
                            <p>Отправьте Ваш отзыв: он всегда очень важен для нас.</p>
                            <p>Заполните форму ниже, выберите тему, тип Вашего вопроса или комментария, и мы скоро с Вами свяжемся.</p>
                            <p></p>

                        </div>
                        <div class="b-customer_service_content">
                            <form action="<?php echo $action; ?>" method="post" class="js-contactus_form b-customer_service_content-form" novalidate="novalidate">
                                <div class=" f-field f-field-textinput f-type-firstname f-state-required" data-required-text="Пожалуйста, введите имя">
                                    <label class="f-label" for="firstname">
                                        <span class="f-label-value">Имя</span>
                                    </label>
                                    <div class="f-field-wrapper">
                                        <input id="firstname" name="firstname" class="f-textinput f-state-required" maxlength="50" value="<?php echo $firstname; ?>" type="text">
                                        <span class="f-error_message">
                                            <span class="f-error_message-block"><?php if ($error_name) { echo $error_name; } ?></span>
                                        </span>
                                        <span class="f-warning_message">
                                            <span class="f-warning_message-block">
                                                <span class="f-warning_text"></span>
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class=" f-field f-field-textinput f-type-lastname f-state-required" data-required-text="Пожалуйста, введите фамилию">
                                    <label class="f-label" for="lastname">
                                        <span class="f-label-value">Фамилия</span>
                                    </label>
                                    <div class="f-field-wrapper">
                                        <input id="lastname" name="lastname" class="f-textinput f-state-required" maxlength="50" value="<?php echo $lastname; ?>" type="text">
                                        <span class="f-error_message">
                                            <span class="f-error_message-block">
                                            </span>
                                        </span>
                                        <span class="f-warning_message">
                                            <span class="f-warning_message-block">
                                                <span class="f-warning_text"><?php if ($error_lastname) { echo $error_lastname; } ?></span>
                                            </span>
                                        </span>


                                    </div>
                                </div>
                                <div class=" f-field f-field-email f-type-email f-state-required" data-required-text="Пожалуйста, введите Email">
                                    <label class="f-label" for="email">
                                        <span class="f-label-value">Email</span>
                                    </label>
                                    <div class="f-field-wrapper">
                                    <input id="email" name="email" class="f-email f-state-required" maxlength="50" value="" type="email">
                                    <span class="f-error_message">
                                        <span class="f-error_message-block"><?php if ($error_email) { echo $error_email; } ?></span>
                                    </span>
                                    <span class="f-warning_message">
                                        <span class="f-warning_message-block">
                                            <span class="f-warning_text"></span>
                                        </span>
                                    </span>
                                    </div>
                                </div>
                                <div class=" f-field f-field-textinput f-type-ordernumber" data-required-text="Пожалуйста, введите номер заказа.">
                                    <label class="f-label" for="ordernumber">
                                        <span class="f-label-value">Номер заказа</span>
                                    </label>
                                    <div class="f-field-wrapper">
                                        <input id="ordernumber" name="ordernumber" class="f-textinput  " maxlength="2147483647" value="<?php echo $ordernumber; ?>" type="text">
                                        <span class="f-error_message">
                                            <span class="f-error_message-block"><?php if ($error_ordernumber) { echo $error_ordernumber; } ?></span>
                                        </span>
                                        <span class="f-warning_message">
                                            <span class="f-warning_message-block">
                                                <span class="f-warning_text"></span>
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class=" f-field f-field-select f-type-myquestion f-state-required" data-required-text="Пожалуйста, введите тему">
                                    <label class="f-label" for="myquestion">
                                        <span class="f-label-value">
                                            Тема
                                        </span>
                                    </label>
                                    <div class="f-field-wrapper">
                                        <div class="f-select-wrapper">
                                            <select class="f-select f-state-required" id="myquestion" name="myquestion">

                                                <?php //foreach ($ as $) { ?>
                                                <option class="f-select_option" value="Вакансии">Вакансии</option>
                                                <option class="f-select_option" value="Пресса">Пресса</option>
                                                <option class="f-select_option" value="Корпоративныйсайт">Корпоративный сайт</option>
                                                <option class="f-select_option" value="Покупкавфизическоммагазине">Покупка в физическом магазине</option>
                                                <option class="f-select_option" value="Информацияотоваре">Информация о товаре</option>
                                                <option class="f-select_option" value="Покупкаонлайн">Покупка онлайн</option>
                                                <option class="f-select_option" value="Доставка">Доставка</option>
                                                <option class="f-select_option" value="Оплата">Оплата</option>
                                                <option class="f-select_option" value="Возвративозмещениесредств">Возврат и возмещение средств</option>
                                                <option class="f-select_option" value="Техническаяподдержка">Техническая поддержка</option>
                                                <option class="f-select_option" value="Размеры">Размеры</option>
                                                <option class="f-select_option" value="Конфиденциальность">Конфиденциальность</option>
                                                <?php //} ?>

                                            </select>
                                        </div>                      
                                        <span class="f-error_message">
                                            <span class="f-error_message-block"></span>
                                        </span>
                                    </div>
                                </div>  
                                <div class=" f-field f-field-textarea f-type-comment f-state-required" data-required-text="Пожалуйста, введите сообщение">
                                    <label class="f-label" for="input-enquiry">
                                        <span class="f-label-value">Сообщение</span>
                                    </label>
                                    <div class="f-field-wrapper">
                                        <textarea id="input-enquiry" name="input-enquiry" class="f-textarea f-state-required" data-character-limit="1000" maxlength="1000"></textarea><div class="char-count">Осталось <span class="char-remain-count">1000</span> символов из <span class="char-allowed-count">1000</span>.</div>
                                        <span class="f-error_message">
                                            <span class="f-error_message-block"><?php if ($error_enquiry) { echo $error_enquiry; } ?></span>
                                        </span>
                                        <span class="f-warning_message">
                                            <span class="f-warning_message-block">
                                                <span class="f-warning_text"></span>
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class=" f-field f-field-select f-type-country f-state-required" data-required-text="Пожалуйста, выберите страну">
                                    <label class="f-label" for="countries_country">
                                        <span class="f-label-value">Страна</span>
                                    </label>
                                    <div class="f-field-wrapper">
                                        <div class="f-select-wrapper">
                                            <select class="f-select country f-state-required" id="countries_country" name="countries_country">

                                                <option class="f-select_option" value="" selected="selected" disabled="">Выберите страну</option>
                                                <?php //foreach ($ as $) { ?>
                                                <option class="f-select_option" value="US" data-region="null" data-show-language="true" data-external-link="false">США</option>
                                                <option class="f-select_option" value="IT" data-region="null" data-show-language="false" data-external-link="false">Италия</option>
                                                <option class="f-select_option" value="GB" data-region="null" data-show-language="false" data-external-link="false">Великобритания</option>
                                                <option class="f-select_option" value="DE" data-region="null" data-show-language="false" data-external-link="false">Германия</option>
                                                <?php // } ?>

                                            </select>
                                        </div>
                                        <span class="f-error_message">
                                            <span class="f-error_message-block"><?php if ($error_countries_country) { echo $error_countries_country; } ?></span>
                                        </span>
                                        <span class="f-warning_message">
                                            <span class="f-warning_message-block">
                                                <span class="f-warning_text"></span>
                                            </span>
                                        </span>
                                    </div>
                                </div>

                                <div class="b-contact_us_mandatory_field"></div>
                                <div class="b-customer_service_content-asset">
                                    <div class="b-content_asset b-content_asset--contact_us content-asset">
                                    </div><!-- End content-asset contact_us -->
                                </div>

                                <button type="submit" value="Отправить" name="contactus_send" class="b-customer_service_content-submit_button js-contactus_submit">
                                    <?php echo $button_submit; ?>
                                </button>       
                            </form>
                        </div>

                    </div>
                </div>




            </div>

        </div>
    </div>
</main>



<?php echo $footer; ?>
