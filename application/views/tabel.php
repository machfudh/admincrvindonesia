<div class="card pd-20 pd-sm-40">
    <h6 class="card-body-title"><?php echo $title ?></h6>
    <form method="post" action="<?php echo $form_action; ?>" id="selectForm">
        <div class="d-flex align-items-center justify-content-end bg-gray-100 ht-md-80 bd pd-x-20 mg-t-10">
            <div class="d-md-flex pd-y-20 pd-md-y-0">
                <?php echo form_dropdown('lcfinds', $search, isset($sfocus) ? $sfocus : '', 'class="form-control select2" data-placeholder="Choose one"
                        data-parsley-class-handler="#slWrapper"
                        data-parsley-errors-container="#slErrorContainer" required'); ?>
                <input type="text" name="lcfindt" class="form-control mg-md-l-10 mg-t-10 mg-md-t-0" placeholder="Search Text"/>
                <button type="submit" class="btn btn-outline-primary btn-icon mg-r-5"><div><i class="fa fa-search"></i></div></button>
                <?php echo isset($link['link_add']) ? $link['link_add'] : ''; ?>
            </div>
        </div>
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
