<form action="<?php echo $action; ?>" method="post" id="install-form" class="form-horizontal" enctype="multipart/form-data">
    <div class="col-xs-12">
        <div class="form-group">
            <div class="col-xs-offset-4 col-xs-8">
                <h4><?php echo $text_settings_header; ?></h4>
            </div>
        </div>
        <div class="form-group">
            <label for="input-store-name" class="control-label col-xs-4"><?php echo $entry_store_name; ?></label>
            <div class="col-xs-8">
                <input type="text" name="store_name" value="<?php echo $store_name; ?>" placeholder="<?php echo $help_store_name; ?>" id="input-store-name" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <label for="input-store-email" class="control-label col-xs-4"><?php echo $entry_store_email; ?></label>
            <div class="col-xs-8">
                <input type="text" name="store_email" value="<?php echo $store_email; ?>" placeholder="<?php echo $help_store_email; ?>" id="input-store-email" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <label for="input-admin-email" class="control-label col-xs-4"><?php echo $entry_admin_email; ?></label>
            <div class="col-xs-8">
                <input type="text" name="admin_email" value="<?php echo $admin_email; ?>" placeholder="<?php echo $help_admin_email; ?>" id="input-admin-email" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <label for="input-admin-username" class="control-label col-xs-4"><?php echo $entry_admin_username; ?></label>
            <div class="col-xs-8">
                <input type="text" name="admin_username" value="<?php echo $admin_username; ?>" placeholder="<?php echo $help_admin_username; ?>" id="input-admin-username" class="form-control" />
            </div>
        </div>
        <div class="form-group">
            <label for="input-admin-password" class="control-label col-xs-4"><?php echo $entry_admin_password; ?></label>
            <div class="col-xs-8">
                <input type="password" name="admin_password" value="<?php echo $admin_password; ?>" placeholder="<?php echo $help_admin_password; ?>" id="input-admin-password" class="form-control" />
            </div>
        </div>

        <div class="collapse" id="advanced-settings">
            <div class="form-group">
                <div class="col-xs-offset-4 col-xs-8">
                    <h4><?php echo $text_advanced_settings; ?></h4>
                </div>
            </div>
            <div class="form-group">
                <label for="input-admin-first-name" class="control-label col-xs-4"><?php echo $entry_admin_first_name; ?></label>
                <div class="col-xs-8">
                    <input type="text" name="admin_first_name" value="<?php echo $admin_first_name; ?>" placeholder="<?php echo $help_admin_first_name; ?>" id="input-admin-first-name" class="form-control" />
                </div>
            </div>
            <div class="form-group">
                <label for="input-admin-last-name" class="control-label col-xs-4"><?php echo $entry_admin_last_name; ?></label>
                <div class="col-xs-8">
                    <input type="text" name="admin_last_name" value="<?php echo $admin_last_name; ?>" placeholder="<?php echo $help_admin_last_name; ?>" id="input-admin-last-name" class="form-control" />
                </div>
            </div>
            <div class="form-group">
                <label for="input-install-demo-data" class="control-label col-xs-4"><?php echo $entry_install_demo_data; ?></label>
                <div class="col-xs-8">
                    <input type="checkbox" name="install_demo_data" id="input-install-demo-data" <?php echo $install_demo_data ? 'checked ' : ''; ?>/>
                </div>
            </div>
        </div>
        <hr />
        <div class="text-center">
            <button type="button" class="btn-expand-down" data-toggle="collapse" data-target="#advanced-settings" aria-expanded="false" aria-controls="advanced-settings" title="<?php echo $help_advanced_settings; ?>" id="btn-show-advanced"><i class="fa fa-chevron-down"></i></button>
        </div>

        <div class="clearfix">
            <div class="form-group pull-left">
                <div class="col-xs-12">
                    <button type="button" onclick="displayDatabase();" class="btn btn-default"><i class="fa fa-arrow-left"></i> <?php echo $button_back; ?></button>
                </div>
            </div>

            <div class="form-group pull-right">
                <div class="col-xs-12">
                    <button type="button" onclick="saveSettings();" class="btn btn-success"><?php echo $button_next; ?> <i class="fa fa-arrow-right"></i></button>
                </div>
            </div>
        </div>
    </div>
</form>