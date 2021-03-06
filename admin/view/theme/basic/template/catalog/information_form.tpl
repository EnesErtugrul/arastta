<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="submit" onclick="save('save')" form="form-information" data-toggle="tooltip" title="<?php echo $button_save; ?>" class="btn btn-success" data-original-title="Save"><i class="fa fa-check"></i></button>
                <button type="submit" form="form-information" data-toggle="tooltip" title="<?php echo $button_saveclose; ?>" class="btn btn-default" data-original-title="Save & Close"><i class="fa fa-save text-success"></i></button>
                <button type="submit" onclick="save('new')" form="form-information" data-toggle="tooltip" title="<?php echo $button_savenew; ?>" class="btn btn-default" data-original-title="Save & New"><i class="fa fa-plus text-success"></i></button>
                <a href="<?php echo $cancel; ?>" data-toggle="tooltip" title="<?php echo $button_cancel; ?>" class="btn btn-default"><i class="fa fa-times-circle text-danger"></i></a></div>
            <h1><?php echo $heading_title; ?></h1>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form-information" class="form-horizontal">
            <div class="row">
                <div class="left-col col-sm-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="general">
                                <ul class="nav nav-tabs" id="language">
                                    <?php foreach ($languages as $language) { ?>
                                    <li><a href="#language<?php echo $language['language_id']; ?>" data-toggle="tab"><img src="view/image/flags/<?php echo $language['image']; ?>" title="<?php echo $language['name']; ?>" /> <?php echo $language['name']; ?></a></li>
                                    <?php } ?>
                                </ul>
                                <div class="tab-content">
                                    <?php foreach ($languages as $language) { ?>
                                    <div class="tab-pane" id="language<?php echo $language['language_id']; ?>">
                                        <div class="form-group required">
                                            <label class="col-sm-2 control-label" for="input-title<?php echo $language['language_id']; ?>"><?php echo $entry_title; ?></label>
                                            <div class="col-sm-10">
                                                <input type="text" name="information_description[<?php echo $language['language_id']; ?>][title]" value="<?php echo isset($information_description[$language['language_id']]) ? $information_description[$language['language_id']]['title'] : ''; ?>" placeholder="<?php echo $entry_title; ?>" id="input-title<?php echo $language['language_id']; ?>" class="form-control input-full-width" />
                                                <?php if (isset($error_title[$language['language_id']])) { ?>
                                                <div class="text-danger"><?php echo $error_title[$language['language_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                        <?php if (!empty($seo_url[$language['language_id']])) { ?>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label"><span data-toggle="tooltip" title="<?php echo $help_seo_url; ?>"><?php echo $entry_seo_url; ?></span></label>
                                            <div class="col-sm-10" style="padding-top: 5px;">
                                                <span>
                                                    <?php $link = str_replace(basename($preview[$language['language_id']]), '', $preview[$language['language_id']]);
                                                     echo $link; ?><span class="seo-url" data-lang="<?php echo $language['language_id']; ?> "><?php echo isset($seo_url[$language['language_id']]) ? $seo_url[$language['language_id']] : ''; ?></span>
                                                </span>
                                                <div class="pull-right">
                                                    <a href="<?php echo $preview[$language['language_id']]; ?>" data-toggle="tooltip" title="<?php echo $text_preview; ?>" target="_blank" class="btn btn-primary btn-sm"><i class="fa fa-eye"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                        <?php } ?>
                                        <div class="form-group required">
                                            <label class="col-sm-2 control-label" for="input-description<?php echo $language['language_id']; ?>"><?php echo $entry_description; ?></label>
                                            <div class="col-sm-10">
                                                <textarea name="information_description[<?php echo $language['language_id']; ?>][description]" placeholder="<?php echo $entry_description; ?>" id="input-description<?php echo $language['language_id']; ?>" class="form-control"><?php echo isset($information_description[$language['language_id']]) ? $information_description[$language['language_id']]['description'] : ''; ?></textarea>
                                                <?php if (isset($error_description[$language['language_id']])) { ?>
                                                <div class="text-danger"><?php echo $error_description[$language['language_id']]; ?></div>
                                                <?php } ?>
                                            </div>
                                        </div>
                                    </div>
                                    <?php } ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="right-col col-sm-4">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo $text_publish; ?></h3>
                            <div class="pull-right">
                                <div class="panel-chevron"><i class="fa fa-chevron-up rotate-reset"></i></div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="publish">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label"><?php echo $text_enabled; ?></label>
                                    <div class="col-sm-9" style="margin-bottom: 10px;">
                                        <label class="radio-inline">
                                            <?php if ($status) { ?>
                                            <input type="radio" name="status" value="1" checked="checked" />
                                            <?php echo $text_enabled; ?>
                                            <?php } else { ?>
                                            <input type="radio" name="status" value="1" />
                                            <?php echo $text_enabled; ?>
                                            <?php } ?>
                                        </label>
                                        <label class="radio-inline">
                                            <?php if (!$status) { ?>
                                            <input type="radio" name="status" value="0" checked="checked" />
                                            <?php echo $text_disabled; ?>
                                            <?php } else { ?>
                                            <input type="radio" name="status" value="0" />
                                            <?php echo $text_disabled; ?>
                                            <?php } ?>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h3 class="panel-title"><?php echo $tab_data; ?></h3>
                            <div class="pull-right">
                                <div class="panel-chevron"><i class="fa fa-chevron-up rotate-reset"></i></div>
                            </div>
                        </div>
                        <div class="panel-body">
                            <div class="data">
                                <div class="form-group">
                                    <label class="col-sm-3 control-label" for="input-bottom"><span data-toggle="tooltip" title="<?php echo $help_bottom; ?>"><?php echo $entry_bottom; ?></span></label>
                                    <div class="col-sm-9">
                                        <div class="checkbox">
                                            <label>
                                            <?php if ($bottom) { ?>
                                            <input type="checkbox" name="bottom" value="1" checked="checked" id="input-bottom" />
                                            <?php } else { ?>
                                            <input type="checkbox" name="bottom" value="1" id="input-bottom" />
                                            <?php } ?>
                                            &nbsp; </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <?php if (in_array(0, $information_store)) { ?>
            <input type="hidden" name="information_store[]" value="0" checked="checked" />
            <?php } else { ?>
            <input type="hidden" name="information_store[]" value="0" />
            <?php } ?>
            <?php foreach ($stores as $store) { ?>
            <?php if (in_array($store['store_id'], $information_store)) { ?>
            <input type="hidden" name="information_store[]" value="<?php echo $store['store_id']; ?>" checked="checked" />
            <?php } else { ?>
            <input type="hidden" name="information_store[]" value="<?php echo $store['store_id']; ?>" />
            <?php } ?>
            <?php } ?>
            <input type="hidden" name="sort_order" value="<?php echo $sort_order; ?>" placeholder="<?php echo $entry_sort_order; ?>" id="input-sort-order" class="form-control" />
            <?php foreach ($languages as $language) { ?>
            <input type="hidden" name="seo_url[<?php echo $language['language_id']; ?>]" value="<?php echo isset($seo_url[$language['language_id']]) ? $seo_url[$language['language_id']] : ''; ?>" placeholder="<?php echo $entry_seo_url; ?>" id="input-seo-url-<?php echo $language['language_id']; ?>" class="form-control" />
            <input type="hidden" name="information_description[<?php echo $language['language_id']; ?>][meta_title]" value="<?php echo isset($information_description[$language['language_id']]) ? $information_description[$language['language_id']]['meta_title'] : ''; ?>" placeholder="<?php echo $entry_meta_title; ?>" id="input-meta-title<?php echo $language['language_id']; ?>" class="form-control" />
            <textarea name="information_description[<?php echo $language['language_id']; ?>][meta_description]" rows="5" placeholder="<?php echo $entry_meta_description; ?>" id="input-meta-description<?php echo $language['language_id']; ?>" class="form-control hidden"><?php echo isset($information_description[$language['language_id']]) ? $information_description[$language['language_id']]['meta_description'] : ''; ?></textarea>
            <textarea name="information_description[<?php echo $language['language_id']; ?>][meta_keyword]" rows="5" placeholder="<?php echo $entry_meta_keyword; ?>" id="input-meta-keyword<?php echo $language['language_id']; ?>" class="form-control hidden"><?php echo isset($information_description[$language['language_id']]) ? $information_description[$language['language_id']]['meta_keyword'] : ''; ?></textarea>
            <?php } ?>
       </form>
    </div>
    <script type="text/javascript"><!--
    $(document).ready(function() {
        <?php foreach ($languages as $language) { ?>
            textEditor('#input-description<?php echo $language["language_id"]; ?>');
        <?php } ?>
        $.fn.editable.defaults.mode = 'inline';

        $('.seo-url').editable({
            url: function (params) {
                $.ajax({
                    type: 'post',
                    url: 'index.php?route=catalog/information/inline&token=<?php echo $token; ?>&information_id=<?php echo $information_id;?>',
                    data: {seo_url: params.value, language_id : $(this).attr('data-lang')},
                    async: false,
                    success: function(json) {
                        $('#input-seo-url-' +  json['language_id']).val(params.value);
                    },
                    error: function (xhr, ajaxOptions, thrownError) {
                        return false;
                    }
                })
            },
            showbuttons: false,
        });
    });
    //--></script>
    <script type="text/javascript"><!--
    $('#language a:first').tab('show');
    $('#seo-language a:first').tab('show');
    //--></script></div>
<?php echo $footer; ?>
