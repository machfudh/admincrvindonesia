<br>
<div class="row-fluid">
    <div class="span12">
        <div class="widget">
            <div class="widget-header">
                <div class="title">
                    <span class="fs1" aria-hidden="true" data-icon="&#xe14a;"></span> <?php echo $title ?>
                </div>
            </div>
            <div class="widget-body">
                <form  name="search" method="post" action="<?php echo $form_action; ?>">
                    <div class="control-group">
                        <div class="input-append">
                            <div class="span8">
                            <?php echo form_dropdown('lcfinds', $search, isset($sfocus) ? $sfocus : '', 'class="form-control"'); ?>    
                            <input class="span6" id="appendedInputButtons" type="text" name="lcfindt">
                            <button class="btn" type="button">Search</button>
                            </div>
                            <div class="span4" align="right">
                                <?php echo isset($link['link_print']) ? $link['link_print'] : ''; ?>
                        <?php echo isset($link['link_add']) ? $link['link_add'] : ''; ?>
                            </div>
                        </div>
                    </div>
            </div>
            </form>
                <br/>
            <?php echo!empty($table) ? $table : ''; ?>
            <ul class="pagination">
                <?php
                echo!empty($pagination) ? '<p>' . $pagination . '</p>' : '';
                ?>
            </ul>

        </div>
    </div>
</div>
</div>