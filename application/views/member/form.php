<div class="col-xl-8">
    <div class="card pd-20 pd-sm-40 form-layout form-layout-4">
        <h6 class="card-body-title"><?php echo $title ?></h6>
        <p class="mg-b-20 mg-sm-b-30">Biaya Pendaftaran dan staterpack Rp. 525.000</p>
        <form name="kategoriform" enctype="multipart/form-data" id="selectForm" method="post" action="<?php echo $form_action; ?>">
            <div class="row">
                <label class="col-sm-4 form-control-label">Nama  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnama" type="text"
                           value='<?php echo set_value('lcnama', isset($data['lcnama']) ? $data['lcnama'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Email  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcemail" type="text"
                           value='<?php echo set_value('lcemail', isset($data['lcemail']) ? $data['lcemail'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Ukuran Kemeja : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <?php echo form_dropdown('lckemeja', $listid_kemeja, isset($data['lckemeja']) ? $data['lckemeja'] : '','class="form-control select2" data-placeholder="Choose one"
                        data-parsley-class-handler="#slWrapper"
                        data-parsley-errors-container="#slErrorContainer" required '); ?>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Propinsi Domisilih : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <?php echo form_dropdown('lcpropinsi', $listid_propinsi, isset($data['lcpropinsi']) ? $data['lcpropinsi'] : '','class="form-control select2" data-placeholder="Choose one"
                        data-parsley-class-handler="#slWrapper"
                        data-parsley-errors-container="#slErrorContainer" required onchange="cboxkab(this.value)"'); ?>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Kabupaten Domisilih : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <div id="kabup">
                        <?php
                        $kabup = $listkabupaten;
                        echo form_dropdown('lckabupaten', $kabup, isset($data['lckabupaten']) ? $data['lckabupaten'] : '','class="form-control select2" data-placeholder="Choose one"
                        data-parsley-class-handler="#slWrapper"
                        data-parsley-errors-container="#slErrorContainer" required'); 
                        ?>
                    </div>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Tgl Lahir  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input type="text" name="lctgllahir" class="form-control fc-datepicker" placeholder="MM/DD/YYYY" 
                           value='<?php echo set_value('lctgllahir', isset($data['lctgllahir']) ? $data['lctgllahir'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Alamat Lenkap : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <textarea rows="3" class="form-control" name="lcalamat"><?php echo set_value('lcalamat', isset($data['lcalamat']) ? $data['lcalamat'] : ''); ?></textarea>
                </div>
            </div><!-- row -->
             <div class="row">
                <label class="col-sm-4 form-control-label">Kode pos :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lckodepos" type="text"
                           value='<?php echo set_value('lckodepos', isset($data['lckodepos']) ? $data['lckodepos'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Tahun Kedaraan : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <?php echo form_dropdown('lctahununit', $listid_tahununit, isset($data['lctahununit']) ? $data['lctahununit'] : '','class="form-control select2" data-placeholder="Choose one"
                        data-parsley-class-handler="#slWrapper"
                        data-parsley-errors-container="#slErrorContainer" required'); ?>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Kapasitas Mesin : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <?php echo form_dropdown('lckapasitasunit', $listid_kpsmesin    , isset($data['lckapasitasunit']) ? $data['lckapasitasunit'] : '','class="form-control select2" data-placeholder="Choose one"
                        data-parsley-class-handler="#slWrapper"
                        data-parsley-errors-container="#slErrorContainer"'); ?>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Warna Kedaraan : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <?php echo form_dropdown('lcwarnaunit', $listid_warnaunit, isset($data['lcwarnaunit']) ? $data['lcwarnaunit'] : '','class="form-control select2" data-placeholder="Choose one"
                        data-parsley-class-handler="#slWrapper"
                        data-parsley-errors-container="#slErrorContainer" required'); ?>
                </div>
            </div><!-- row -->
             <div class="row">
                <label class="col-sm-4 form-control-label">No Polisi  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnopolisi" type="text"
                           value='<?php echo set_value('lcnopolisi', isset($data['lcnopolisi']) ? $data['lcnopolisi'] : ''); ?>'>
                </div>
            </div><!-- row -->
             <div class="row">
                <label class="col-sm-4 form-control-label">No Rangka  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnorangka" type="text"
                           value='<?php echo set_value('lcnorangka', isset($data['lcnorangka']) ? $data['lcnorangka'] : ''); ?>'>
                </div>
            </div><!-- row -->
             <div class="row">
                <label class="col-sm-4 form-control-label">No. Mesin  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnomesin" type="text"
                           value='<?php echo set_value('lcnomesin', isset($data['lcnomesin']) ? $data['lcnomesin'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Chapter : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <?php echo form_dropdown('lcchapter', $listid_chapter, isset($data['lcchapter']) ? $data['lcchapter'] : '','class="form-control select2" data-placeholder="Choose one"
                        data-parsley-class-handler="#slWrapper"
                        data-parsley-errors-container="#slErrorContainer" required'); ?>
                </div>
            </div><!-- row -->
            <div class="row mg-t-20">
                <label class="col-sm-4 form-control-label">KTP / SIM: <span class="tx-danger">*</span></label>
                <div class="col-lg-3 mg-t-40 mg-lg-t-0">
                    <label class="custom-file">
                        <input type="file"  name="ktp" accept="image">
                    </label>
                </div>
            </div>
             <div class="row mg-t-20">
                <label class="col-sm-4 form-control-label">STNK : <span class="tx-danger">*</span></label>
                <div class="col-lg-3 mg-t-40 mg-lg-t-0">
                    <label class="custom-file">
                        <input type="file"  name="stnk" accept="image">
                    </label>
                </div>
            </div>
             <div class="row mg-t-20">
                <label class="col-sm-4 form-control-label">Photo dengan mobil CR-V : <span class="tx-danger">*</span></label>
                <div class="col-lg-3 mg-t-40 mg-lg-t-0">
                    <label class="custom-file">
                        <input type="file"  name="photo" accept="image">
                    </label>
                </div>
            </div>
             <div class="row mg-t-20">
                <label class="col-sm-4 form-control-label">Bukti Transfer : <span class="tx-danger">*</span></label>
                <div class="col-lg-3 mg-t-40 mg-lg-t-0">
                    <label class="custom-file">
                        <input type="file"  name="transfer" accept="image">
                    </label>
                </div>
            </div>
            
            <a href="<?php echo base_url() . 'uploads/download/Tata_Tertib_CCI_2018.pdf'; ?>" download>Tata Tertip CCI 2018 </a> <br/>
            
            <input type="checkbox" id="chkAgree" onclick="goFurther()"> Saya Sudah membaca dan setuju dengan TARTIP di atas 
            
            <input type="hidden" name="lcid"  value="<?php echo set_value('lcid', isset($data['lcid']) ? $data['lcid'] : ''); ?>" />
            <div class="form-layout-footer mg-t-30">
                <?php
                 if($this->session->userdata('access') > 100) { ?>
                    <button type="submit" id="btnSubmit" disabled class="btn btn-info mg-r-5">Register</button>
                 <?php } ?>   
                <button class="btn btn-secondary" onclick="history.back(-1)">Cancel</button>
            </div><!-- form-layout-footer -->
        </form>
    </div><!-- card -->
</div><!-- col-6 -->



