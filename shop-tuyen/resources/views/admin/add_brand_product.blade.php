@extends('admin_layout')
@section('admin_content')
<div class="row">
            <div class="col-lg-12">
                    <section class="panel">
                        <header class="panel-heading">
                            Thêm thương hiệu mới
                        </header>
                        <div class="panel-body">
                        <?php
                        $message = Session::get('message');
                        if($message){
                            echo '<span class="text-alert">',$message,'</span>';
                            Session::put('message', null);
                        }
                        ?>

                            <div class="position-center">
                                <form role="form" action="{{URL('/save-brand-product')}}" method="post">
                                    {{csrf_field()}}
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Tên thương hiệu</label>
                                    <input type="text" name="brand_product_name" class="form-control" id="exampleInputEmail1" placeholder="Tên danh mục">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Mô tả chi tiết</label>
                                    <textarea style="resize: none" rows="7" class="form-control" name="brand_product_desc" id="exampleInputPassword1" placeholder="Mô tả chi tiết"></textarea>
                                </div>
                                <div class="form-group">
                                <label for="exampleInputPassword1">Chế độ xem</label>
                                    <select name="brand_product_status" class="form-control input-sm m-bot15">
                                        <option value="0">Ẩn</option>
                                        <option value="1">Hiện</option>
                                    </select>
                                </div>
                                
                                <button type="submit" name="add_brand_product" class="btn btn-info">Thêm thương hiệu</button>
                            </form>
                            </div>

                        </div>
                    </section>

            </div>
@endsection