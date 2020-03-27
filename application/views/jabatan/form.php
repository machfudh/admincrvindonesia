<div class="col-xl-8">
    <div class="card pd-20 pd-sm-40 form-layout form-layout-4">
        <h6 class="card-body-title"><?php echo $title ?></h6>
        <p class="mg-b-20 mg-sm-b-30">Data Jabatan</p>
        <form name="kategoriform" enctype="multipart/form-data" id="selectForm" method="post" action="<?php echo $form_action; ?>">
            <div class="row">
                <label class="col-sm-4 form-control-label">nama  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnama" type="text"
                           value='<?php echo set_value('lcnama', isset($data['lcnama']) ? $data['lcnama'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Keterangan: <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <textarea rows="3" class="form-control" name="lcketerangan"  placeholder="Keterangan"><?php echo set_value('lcketerangan', isset($data['lcketerangan']) ? $data['lcketerangan'] : ''); ?></textarea>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Terima Email  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input type="checkbox" name="lcmemail"  value="<?php echo set_value('lcmemail', isset($data['lcmemail']) ? $data['lcmemail'] : ''); ?>"> Terima
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Akses  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <?php echo form_dropdown('lcakses', $listakses, isset($data['lcakses']) ? $data['lcakses'] : '', 'class="form-control" '); ?>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Rool Menu : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <?php echo form_dropdown('lcidrool', $listrool, isset($data['lcidrool']) ? $data['lcidrool'] : '', 'class="form-control" '); ?>
                </div>
            </div><!-- row -->
            
            <input type="hidden" name="lcid"  value="<?php echo set_value('lcid', isset($data['lcid']) ? $data['lcid'] : ''); ?>" />
            <div class="form-layout-footer mg-t-30">
                <button type="submit" class="btn btn-info mg-r-5">Save</button>
                <button class="btn btn-secondary" onclick="history.back(-1)">Cancel</button>
            </div><!-- form-layout-footer -->
        </form>
    </div><!-- card -->
</div><!-- col-6 -->



