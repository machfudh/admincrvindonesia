<div class="col-xl-8">
    <div class="card pd-20 pd-sm-40 form-layout form-layout-4">
        <h6 class="card-body-title"><?php echo $title ?></h6>
        <p class="mg-b-20 mg-sm-b-30">Data Non Chapter</p>
        <form name="kategoriform" enctype="multipart/form-data" id="selectForm" method="post" action="<?php echo $form_action; ?>">
            <div class="row">
                <label class="col-sm-4 form-control-label">Nama Chapter Sementara :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnamachapter" type="text"
                           value='<?php echo set_value('lcnamachapter', isset($data['lcnamachapter']) ? $data['lcnamachapter'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Keterangan: <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <textarea rows="3" class="form-control" name="lcketerangan"  placeholder="Keterangan"><?php echo set_value('lcketerangan', isset($data['lcketerangan']) ? $data['lcketerangan'] : ''); ?></textarea>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Propinsi : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <?php echo form_dropdown('lcpropinsi', $listid_propinsi, isset($default['lcpropinsi']) ? $default['lcpropinsi'] : '','class="form-control select2" data-placeholder="Choose one"
                        data-parsley-class-handler="#slWrapper"
                        data-parsley-errors-container="#slErrorContainer" required onchange="cboxkab(this.value)"'); ?>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Kabupaten : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <div id="kabup">
                        <?php
                        $kabup = $listkabupaten;
                        echo form_dropdown('lckabupaten', $kabup, isset($default['lckabupaten']) ? $default['lckabupaten'] : '','class="form-control select2" data-placeholder="Choose one"
                        data-parsley-class-handler="#slWrapper"
                        data-parsley-errors-container="#slErrorContainer" required'); 
                        ?>
                    </div>
                </div>
            </div><!-- row -->
            
            <input type="hidden" name="lcid"  value="<?php echo set_value('lcid', isset($data['lcid']) ? $data['lcid'] : ''); ?>" />
            <div class="form-layout-footer mg-t-30">
                <button type="submit" class="btn btn-info mg-r-5">Save</button>
                <button class="btn btn-secondary">Cancel</button>
            </div><!-- form-layout-footer -->
        </form>
    </div><!-- card -->
</div><!-- col-6 -->



