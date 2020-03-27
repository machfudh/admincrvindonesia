<div class="col-xl-8">
    <div class="card pd-20 pd-sm-40 form-layout form-layout-4">
        <h6 class="card-body-title"><?php echo $title ?></h6>
        <p class="mg-b-20 mg-sm-b-30">Keterangan Input</p>
        <form name="kategoriform" enctype="multipart/form-data" id="selectForm" method="post" action="<?php echo $form_action; ?>">
            <div class="row">
                <label class="col-sm-4 form-control-label">Email : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcemail" type="text"
                           value='<?php echo set_value('lcemail', isset($data['lcemail']) ? $data['lcemail'] : ''); ?>'>
                </div>
            </div><!-- row -->
            
            <input type="hidden" name="lcid"  value="<?php echo set_value('lcid', isset($data['lcid']) ? $data['lcid'] : ''); ?>" />
            <div class="form-layout-footer mg-t-30">
                <button type="submit" class="btn btn-info mg-r-5">Load</button>
                <button class="btn btn-secondary" onclick="history.back(-1)">Cancel</button>
            </div><!-- form-layout-footer -->
        </form>
    </div><!-- card -->
</div><!-- col-6 -->


