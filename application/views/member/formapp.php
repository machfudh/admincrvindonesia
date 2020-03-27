<div class="col-xl-8">
    <div class="card pd-20 pd-sm-40 form-layout form-layout-4">
        <h6 class="card-body-title"><?php echo $title ?></h6>
        <p class="mg-b-20 mg-sm-b-30">Biaya Pendaftaran dan staterpack Rp. 525.000</p>
        <form name="kategoriform" enctype="multipart/form-data" id="selectForm" method="post" action="<?php echo $form_action; ?>">
            <div class="row">
                <label class="col-sm-4 form-control-label">Nama  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnama" type="text" disabled
                           value='<?php echo set_value('lcnama', isset($data['lcnama']) ? $data['lcnama'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Email  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcemail" type="text" disabled
                           value='<?php echo set_value('lcemail', isset($data['lcemail']) ? $data['lcemail'] : ''); ?>'>
                </div>
            </div><!-- row -->
             <div class="row">
                <label class="col-sm-4 form-control-label">HP/WA  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lchpwa" type="text" disabled
                           value='<?php echo set_value('lchpwa', isset($data['lchpwa']) ? $data['lchpwa'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Ukuran Kemeja : <span class="tx-danger">*</span></label>
               <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lckemeja" type="text" disabled
                           value='<?php echo set_value('lckemeja', isset($data['lckemeja']) ? $data['lckemeja'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Propinsi Domisilih : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcprodomisilih" type="text" disabled
                           value='<?php echo set_value('lcprodomisilih', isset($data['lcprodomisilih']) ? $data['lcprodomisilih'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Kabupaten Domisilih : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lckabdomisilih" type="text" disabled
                           value='<?php echo set_value('lckabdomisilih', isset($data['lckabdomisilih']) ? $data['lckabdomisilih'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Tgl Lahir  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input type="text" name="lctgllahir" class="form-control"  disabled 
                           value='<?php echo set_value('lctgllahir', isset($data['lctgllahir']) ? $data['lctgllahir'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Alamat Lenkap : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <textarea rows="3" class="form-control" name="lcalamat" disabled ><?php echo set_value('lcalamat', isset($data['lcalamat']) ? $data['lcalamat'] : ''); ?></textarea>
                </div>
            </div><!-- row -->
             <div class="row">
                <label class="col-sm-4 form-control-label">Kode pos :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lckodepos" type="text" disabled
                           value='<?php echo set_value('lckodepos', isset($data['lckodepos']) ? $data['lckodepos'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Tahun Kedaraan : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcidtahununit" type="text" disabled
                           value='<?php echo set_value('lcidtahununit', isset($data['lcidtahununit']) ? $data['lcidtahununit'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Kapasitas Mesin : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcidkapasitasunit" type="text" disabled
                           value='<?php echo set_value('lcidkapasitasunit', isset($data['lcidkapasitasunit']) ? $data['lcidkapasitasunit'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <div class="row">
                <label class="col-sm-4 form-control-label">Warna Kedaraan : <span class="tx-danger">*</span></label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcidwarnaunit" type="text" disabled
                           value='<?php echo set_value('lcidwarnaunit', isset($data['lcidwarnaunit']) ? $data['lcidwarnaunit'] : ''); ?>'>
                </div>
            </div><!-- row -->
             <div class="row">
                <label class="col-sm-4 form-control-label">No Polisi  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnopolisi" type="text" disabled
                           value='<?php echo set_value('lcnopolisi', isset($data['lcnopolisi']) ? $data['lcnopolisi'] : ''); ?>'>
                </div>
            </div><!-- row -->
             <div class="row">
                <label class="col-sm-4 form-control-label">No Rangka  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnorangka" type="text" disabled
                           value='<?php echo set_value('lcnorangka', isset($data['lcnorangka']) ? $data['lcnorangka'] : ''); ?>'>
                </div>
            </div><!-- row -->
             <div class="row">
                <label class="col-sm-4 form-control-label">No. Mesin  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnomesin" type="text" disabled
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
                <?php
                if (isset($data['lcktpsim'])) {
                    ?>
                    <img src="<?php echo base_url(); ?>uploads/anggota_image/<?php echo $data['lcktpsim']; ?>" width="50%" id='blah' />  
                    <?php
                } else {
                    ?>
                    <img src="<?php echo base_url(); ?>uploads/anggota_image/default.jpg" width="20%" alt="" id='blah' />
                    <?php
                }
                ?> 
                </div>
            </div>
             <div class="row mg-t-20">
                <label class="col-sm-4 form-control-label">STNK : <span class="tx-danger">*</span></label>
                <div class="col-lg-3 mg-t-40 mg-lg-t-0">
                   <?php
                if (isset($data['lcstnk'])) {
                    ?>
                    <img src="<?php echo base_url(); ?>uploads/anggota_image/<?php echo $data['lcstnk']; ?>" width="50%" id='blah' />  
                    <?php
                } else {
                    ?>
                    <img src="<?php echo base_url(); ?>uploads/anggota_image/default.jpg" width="20%" alt="" id='blah' />
                    <?php
                }
                ?> 
                </div>
            </div>
             <div class="row mg-t-20">
                <label class="col-sm-4 form-control-label">Bukti Transfer : <span class="tx-danger">*</span></label>
                <div class="col-lg-3 mg-t-40 mg-lg-t-0">
                    <?php
                if (isset($data['lcbuktitransfer'])) {
                    ?>
                    <img src="<?php echo base_url(); ?>uploads/anggota_image/<?php echo $data['lcbuktitransfer']; ?>" width="50%" id='blah' />  
                    <?php
                } else {
                    ?>
                    <img src="<?php echo base_url(); ?>uploads/anggota_image/default.jpg" width="20%" alt="" id='blah' />
                    <?php
                }
                ?> 
                </div>
            </div>
            <div class="row mg-t-20">
                <label class="col-sm-4 form-control-label">Photo diri &  Mobil : <span class="tx-danger">*</span></label>
                <div class="col-lg-3 mg-t-40 mg-lg-t-0">
                    <?php
                if (isset($data['lcphoto'])) {
                    ?>
                    <img src="<?php echo base_url(); ?>uploads/anggota_image/<?php echo $data['lcphoto']; ?>" width="50%" id='blah' />  
                    <?php
                } else {
                    ?>
                    <img src="<?php echo base_url(); ?>uploads/anggota_image/default.jpg" width="20%" alt="" id='blah' />
                    <?php
                }
                ?> 
                </div>
            </div>
            <br/>
            <div class="row">
                <label class="col-sm-4 form-control-label">Nopung  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcnopung" type="text"
                           value='<?php echo set_value('lcnopung', isset($data['lcnopung']) ? $data['lcnopung'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <br/>
             <div class="row">
                <label class="col-sm-4 form-control-label">Catatan  :</label>
                <div class="col-sm-8 mg-t-10 mg-sm-t-0">
                    <input class="form-control" id="nama" name="lcketaktif" type="text"
                           value='<?php echo set_value('lcketaktif', isset($data['lcketaktif']) ? $data['lcketaktif'] : ''); ?>'>
                </div>
            </div><!-- row -->
            <br/>
            
            <input type="checkbox" name="lcaktif"  value="1"> Approve  
            
            <input type="hidden" name="lcid"  value="<?php echo set_value('lcid', isset($data['lcid']) ? $data['lcid'] : ''); ?>" />
            <div class="form-layout-footer mg-t-30">
                <button type="submit" class="btn btn-info mg-r-5">Approve</button>
            </div><!-- form-layout-footer -->
        </form>
    </div><!-- card -->
</div><!-- col-6 -->



