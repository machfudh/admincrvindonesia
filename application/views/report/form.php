<div class="col-xl-8">
    <div class="card pd-20 pd-sm-40 form-layout form-layout-4">
        <h6 class="card-body-title"><?php echo $title ?></h6>
        <p class="mg-b-20 mg-sm-b-30">Keterangan Input</p>
        <form name="kategoriform" id="selectForm" method="post" action="<?php echo $form_action; ?>">
            <div class="row">
                <label class="col-sm-4 form-control-label">Seq No:</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcseqno" type="text" disabled="true"
                           value='<?php echo set_value('lcseqno', isset($data['lcseqno']) ? $data['lcseqno'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">No reff:</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnoref" type="text" disabled="true"
                           value='<?php echo set_value('lcnoref', isset($data['lcnoref']) ? $data['lcnoref'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Name:</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnama" type="text" disabled="true"
                           value='<?php echo set_value('lcnama', isset($data['lcnama']) ? $data['lcnama'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Address : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lctalamat1" type="text" disabled="true"
                           value='<?php echo set_value('lcalamat1', isset($data['lcalamat1']) ? $data['lcalamat1'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Address : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lctalamat2" type="text" disabled="true"
                           value='<?php echo set_value('lcalamat2', isset($data['lcalamat2']) ? $data['lcalamat2'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Address : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lctalamat3" type="text" disabled="true"
                           value='<?php echo set_value('lcalamat3', isset($data['lcalamat3']) ? $data['lcalamat3'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">City : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lckota" type="text" disabled="true"
                           value='<?php echo set_value('lckota', isset($data['lckota']) ? $data['lckota'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Date Upload: </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lctgl_upload" type="text" disabled="true"
                           value='<?php echo set_value('lctgl_upload', isset($data['lctgl_upload']) ? $data['lctgl_upload'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Type : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lctype" type="text" disabled="true"
                           value='<?php echo set_value('lctype', isset($data['lctype']) ? $data['lctype'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Serv Type : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcserv_type" type="text" disabled="true"
                           value='<?php echo set_value('lcserv_type', isset($data['lcserv_type']) ? $data['lcserv_type'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Courier : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lckurirnama" type="text" disabled="true"
                           value='<?php echo set_value('lckurirnama', isset($data['lckurirnama']) ? $data['lckurirnama'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Status: </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcstatusketerangan" type="text" disabled="true"
                           value='<?php echo set_value('lcstatusketerangan', isset($data['lcstatusketerangan']) ? $data['lcstatusketerangan'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Inproccess Time : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcwaktu_ambil" type="text" disabled="true"
                           value='<?php echo set_value('lcwaktu_ambil', isset($data['lcwaktu_ambil']) ? $data['lcwaktu_ambil'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Inproccess Time : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcwaktu_ambil" type="text" disabled="true"
                           value='<?php echo set_value('lcwaktu_ambil', isset($data['lcwaktu_ambil']) ? $data['lcwaktu_ambil'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Success Time : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcwaktu_diterima" type="text" disabled="true"
                           value='<?php echo set_value('lcwaktu_diterima', isset($data['lcwaktu_diterima']) ? $data['lcwaktu_diterima'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Success Status : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcpenerima" type="text" disabled="true"
                           value='<?php echo set_value('lcpenerima', isset($data['lcpenerima']) ? $data['lcpenerima'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Success Name : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcstatiket" type="text" disabled="true"
                           value='<?php echo set_value('lcstatiket', isset($data['lcstatiket']) ? $data['lcstatiket'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Return Date : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcwaktu_dikembalikan" type="text" disabled="true"
                           value='<?php echo set_value('lcwaktu_dikembalikan', isset($data['lcwaktu_dikembalikan']) ? $data['lcwaktu_dikembalikan'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Return Status : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcstatretket" type="text" disabled="true"
                           value='<?php echo set_value('lcstatretket', isset($data['lcstatretket']) ? $data['lcstatretket'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Return Note : </label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lccatatan" type="text" disabled="true"
                           value='<?php echo set_value('lccatatan', isset($data['lccatatan']) ? $data['lccatatan'] : ''); ?>'>
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



