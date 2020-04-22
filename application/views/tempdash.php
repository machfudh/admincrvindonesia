<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <?php $this->load->view('header'); ?>
    </head>

    <body>
        <?php
        if (!$this->session->userdata('validated'))
            redirect('login');
        ?>

        <?php

        function do_logout() {
            $this->session->sess_destroy();
            redirect('login');
        }
        ?>

        <?php $this->load->view('navigation_bar'); ?>

        <?php $this->load->view('sidebar_menu'); ?>

        <div class="am-pagetitle">
            <h5 class="am-title"><?php echo $titlemenu ?></h5>

        </div><!-- am-pagetitle -->

        <div class="am-mainpanel">
            <div class="am-pagebody">

                <div class="row row-sm">
                    <div class="col-lg-4">
                        <div class="card">
                            <div id="rs1" class="wd-100p ht-200"></div>
                            <div class="overlay-body pd-x-20 pd-t-20">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h6 class="tx-12 tx-uppercase tx-inverse tx-bold mg-b-5">Today's Registration</h6>
                                        <p class="tx-12"><?php echo $lctoday; ?></p>
                                    </div>
                                    <!--<a href="" class="tx-gray-600 hover-info"><i class="icon ion-more tx-16 lh-0"></i></a>-->
                                </div><!-- d-flex -->
                                <h2 class="mg-b-5 tx-inverse tx-lato"><?php echo $dataInproccess; ?></h2>
                                <!--<p class="tx-12 mg-b-0"><?php echo "Rp. " . $danaInproccess; ?></p>-->
                            </div>
                        </div><!-- card -->
                    </div><!-- col-4 -->
                    <div class="col-lg-4 mg-t-15 mg-sm-t-20 mg-lg-t-0">
                        <div class="card">
                            <div id="rs2" class="wd-100p ht-200"></div>
                            <div class="overlay-body pd-x-20 pd-t-20">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h6 class="tx-12 tx-uppercase tx-inverse tx-bold mg-b-5">Today's Member</h6>
                                        <p class="tx-12"><?php echo $lctoday ?></p>
                                    </div>
                                    <!--<a href="" class="tx-gray-600 hover-info"><i class="icon ion-more tx-16 lh-0"></i></a>-->
                                </div><!-- d-flex -->
                                <h2 class="mg-b-5 tx-inverse tx-lato"><?php echo $dataSuccess; ?></h2>
                                <!--<p class="tx-12 mg-b-0"><?php echo "Rp. " . $danaSuccess; ?></p>-->
                            </div>
                        </div><!-- card -->
                    </div><!-- col-4 -->
                    <div class="col-lg-4 mg-t-15 mg-sm-t-20 mg-lg-t-0">
                        <div class="card">
                            <div id="rs3" class="wd-100p ht-200"></div>
                            <div class="overlay-body pd-x-20 pd-t-20">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h6 class="tx-12 tx-uppercase tx-inverse tx-bold mg-b-5">All Member</h6>
                                        <p class="tx-12"><?php echo $lctoday; ?></p>
                                    </div>
                                    <!--<a href="" class="tx-gray-600 hover-info"><i class="icon ion-more tx-16 lh-0"></i></a>-->
                                </div><!-- d-flex -->
                                <h2 class="mg-b-5 tx-inverse tx-lato"><?php echo $dataReturn; ?></h2>
                                <!--<p class="tx-12 mg-b-0"><?php echo "Rp. " . $danaReturn; ?></p>-->
                            </div>
                        </div><!-- card -->
                    </div><!-- col-4 -->
                </div><!-- row -->

                <br/>
                <div class="card pd-20 pd-sm-40">
    <h6 class="card-body-title"><?php echo $title ?></h6>
                <form method="post" action="<?php echo $form_action; ?>" id="selectForm">
                    <div class="d-flex align-items-center justify-content-center bg-gray-100 ht-md-80 bd pd-x-10">
                        <div class="d-md-flex pd-y-10 pd-md-y-0">
                            <?php echo form_dropdown('lctanggal1', $tgl_hari, isset($hari) ? $hari : '', ' class="form-control select2" '); ?>
                            <?php echo form_dropdown('lcbulan', $bulansearch, isset($bulan) ? $bulan : '', ' class="form-control select2" '); ?>

                            <?php echo form_dropdown('lctahun', $tgl_tahun, isset($year) ? $year : '', ' class="form-control select2" '); ?> 
<!--                            <div class="col-md-3">
                                <?php //echo form_dropdown('lckurir', $listkurir, isset($data['lckurir']) ? $data['lckurir'] : '', ' class="form-control select2" '); ?> 
                            </div>
                            <div class="col-lg-2">
                                <?php //echo form_dropdown('lcshipp', $listshipp, isset($data['lcshipp']) ? $data['lcshipp'] : '', ' class="form-control select2" '); ?> 
                            </div>-->
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
                </div>
            </div><!-- am-pagebody -->
            <div class="am-footer">
                <span>Copyright &copy; 2020. All Rights Reserved. CR-V Club Indonesia</span>
                <!--<span>Created by: ThemePixels, Inc.</span>-->
            </div><!-- am-footer -->
        </div><!-- am-mainpanel -->
        <?php $this->load->view('footer'); ?>
        <script>
            $(function () {

                'use strict';

                var rs1 = new Rickshaw.Graph({
                    element: document.querySelector('#rs1'),
                    renderer: 'area',
                    max: 80,
                    stroke: true,
                    series: [{
                            data: [
                                {x: 0, y: 20},
                                {x: 1, y: 10},
                                {x: 2, y: 15},
                                {x: 3, y: 10},
                                {x: 4, y: 15},
                                {x: 5, y: 5},
                                {x: 6, y: 15},
                                {x: 7, y: 10},
                                {x: 8, y: 20},
                                {x: 9, y: 25},
                                {x: 10, y: 35}
                            ],
                            color: '#999999',
                            stroke: '#37474F'
                        }]
                });
                rs1.render();

                // Responsive Mode
                new ResizeSensor($('.am-mainpanel'), function () {
                    rs1.configure({
                        width: $('#rs1').width(),
                        height: $('#rs1').height()
                    });
                    rs1.render();
                });

                var rs2 = new Rickshaw.Graph({
                    element: document.querySelector('#rs2'),
                    renderer: 'area',
                    max: 80,
                    stroke: true,
                    series: [{
                            data: [
                                {x: 0, y: 10},
                                {x: 1, y: 15},
                                {x: 2, y: 18},
                                {x: 3, y: 15},
                                {x: 4, y: 20},
                                {x: 5, y: 10},
                                {x: 6, y: 15},
                                {x: 7, y: 10},
                                {x: 8, y: 20},
                                {x: 9, y: 25},
                                {x: 10, y: 30}
                            ],
                            color: '#00FF40',
                            stroke: '#0B3B0B'
                        }]
                });
                rs2.render();

                // Responsive Mode
                new ResizeSensor($('.am-mainpanel'), function () {
                    rs2.configure({
                        width: $('#rs2').width(),
                        height: $('#rs2').height()
                    });
                    rs2.render();
                });

                var rs3 = new Rickshaw.Graph({
                    element: document.querySelector('#rs3'),
                    renderer: 'area',
                    max: 80,
                    stroke: true,
                    series: [{
                            data: [
                                {x: 0, y: 20},
                                {x: 1, y: 10},
                                {x: 2, y: 15},
                                {x: 3, y: 10},
                                {x: 4, y: 15},
                                {x: 5, y: 5},
                                {x: 6, y: 15},
                                {x: 7, y: 10},
                                {x: 8, y: 20},
                                {x: 9, y: 25},
                                {x: 10, y: 20}
                            ],
                            color: '#B43104',
                            stroke: '#8A0808'
                        }]
                });
                rs3.render();

                // Responsive Mode
                new ResizeSensor($('.am-mainpanel'), function () {
                    rs3.configure({
                        width: $('#rs3').width(),
                        height: $('#rs3').height()
                    });
                    rs3.render();
                });


                $.plot("#f2", [{
                        data: [[0, 3], [2, 8], [4, 5], [6, 13], [8, 5], [10, 7], [12, 8], [14, 10]],
                        bars: {
                            show: true,
                            lineWidth: 0,
                            fillColor: '#2D3A50'
                        }
                    }, {
                        data: [[1, 5], [3, 7], [5, 10], [7, 7], [9, 9], [11, 5], [13, 4], [15, 6]],
                        bars: {
                            show: true,
                            lineWidth: 0,
                            fillColor: '#FB9337'
                        }
                    }], {
                    grid: {
                        borderWidth: 1,
                        borderColor: '#D9D9D9'
                    },
                    yaxis: {
                        tickColor: '#d9d9d9',
                        font: {
                            color: '#666',
                            size: 10
                        }
                    },
                    xaxis: {
                        tickColor: '#d9d9d9',
                        font: {
                            color: '#666',
                            size: 10
                        }
                    }
                });


                var newCust = [[0, 2], [1, 3], [2, 6], [3, 5], [4, 7], [5, 8], [6, 10]];
                var retCust = [[0, 1], [1, 2], [2, 5], [3, 3], [4, 5], [5, 6], [6, 9]];

                var plot = $.plot($('#f1'), [{
                        data: newCust,
                        label: 'New Customer',
                        color: '#2D3A50'
                    },
                    {
                        data: retCust,
                        label: 'Returning Customer',
                        color: '#FB9337'
                    }],
                        {
                            series: {
                                lines: {
                                    show: true,
                                    lineWidth: 1
                                },
                                shadowSize: 0
                            },
                            points: {
                                show: false,
                            },
                            legend: {
                                noColumns: 1,
                                position: 'nw'
                            },
                            grid: {
                                hoverable: true,
                                clickable: true,
                                borderColor: '#ddd',
                                borderWidth: 0,
                                labelMargin: 5,
                                backgroundColor: '#fff'
                            },
                            yaxis: {
                                min: 0,
                                max: 15,
                                color: '#eee',
                                font: {
                                    size: 10,
                                    color: '#999'
                                }
                            },
                            xaxis: {
                                color: '#eee',
                                font: {
                                    size: 10,
                                    color: '#999'
                                }
                            }
                        });

            });
        </script>
    </body>
    <!-- END BODY -->
</html>