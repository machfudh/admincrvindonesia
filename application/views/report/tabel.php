<div class="card pd-20 pd-sm-40">
    <h6 class="card-body-title"><?php echo $title ?></h6>
    <form method="post" action="<?php echo $form_action; ?>" id="selectForm">
        <div class="d-flex align-items-center justify-content-center bg-gray-100 ht-md-80 bd pd-x-10">
        <div class="d-md-flex pd-y-12 pd-md-y-0">
            
            <input type="text" name="lctanggal1" class="form-control fc-datepicker" placeholder="MM/DD/YYYY"> S/D
            
            <input type="text" name="lctanggal2" class="form-control fc-datepicker" placeholder="MM/DD/YYYY">
            
            <div class="col-md-3">
                <?php echo form_dropdown('lckurir', $listkurir, isset($data['lckurir']) ? $data['lckurir'] : '', ' class="form-control" '); ?> 
            </div>
            <div class="col-lg-2">
                <?php echo form_dropdown('lcshipp', $listshipp, isset($data['lcshipp']) ? $data['lcshipp'] : '', ' class="form-control" '); ?> 
            </div>
            <button type="submit" class="btn btn-outline-primary btn-icon mg-r-5"><div><i class="fa fa-search"></i></div></button>
             <?php echo isset($link['link_add']) ? $link['link_add'] : ''; ?>
        </div>
    </div><!-- d-flex -->
    </form>
    <div class="table-wrapper">
        <?php echo!empty($table) ? $table : ''; ?>
        <br/>
        <nav aria-label="Page navigation">
            <ul class="pagination pagination-basic mg-b-0">
                <?php
                echo!empty($pagination) ? '<p>  ' . $pagination . '</p>  ' : '';
                ?>
            </ul>
        </nav>
    </div><!-- table-wrapper -->
</div><!-- card -->
