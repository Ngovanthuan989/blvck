@extends('admin.layout.admin')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Bài viết
        </h1>
        <ol class="breadcrumb">
            <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
            <li><a href="#">Danh sách bài viết</a></li>
        </ol>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-header">
                        <a  href="{{ route('products.create') }}"><button class="btn btn-primary">Thêm mới</button> </a>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="products" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th width="5%">ID</th>
                                <th>Còn hàng</th>
                                <th>Tiêu đề</th>
                                <th>Đường dẫn</th>
                                <th>Danh mục</th>
                                <th>Hình ảnh</th>
                                <th>Thao tác</th>
                            </tr>
                            </thead>
                        </table>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
        </div>
    </section>
    @include('admin.partials.popup_delete')
    @include('admin.partials.visiable')
@endsection
@push('scripts')
<script>
    $(function() {
        $('#products').DataTable({
            processing: true,
            serverSide: true,
            ajax: '{!! route('datatable_product') !!}',
            columns: [
                { data: 'post_id', name: 'post_id' },
                { data: 'sold_out', name: 'sold_out', orderable: false,
                    render: function ( data, type, row, meta ) {
                        if(data.sold_out != 1){
                            return '<input type="checkbox" class="flat-red" onclick="return soldOut(this);" value="'+ data.post_id +'" checked/>';
                        }else{
                            return '<input type="checkbox" class="flat-red" onclick="return soldOut(this);" value="'+ data.post_id +'"/>';
                        }
                    },
                    searchable: false  },
                { data: 'title', name: 'title' },
                { data: 'slug', name: 'slug' },
                { data: 'category', name: 'category' },
                { data: 'image', name: 'image', orderable: false,
                    render: function ( data, type, row, meta ) {
                        return '<img src="'+data+'" width="100" />';
                    },
                    searchable: false  },
                { data: 'action', name: 'action', orderable: false, searchable: false },
            ]
        });
    });
    function soldOut(e) {
        if(confirm('Bạn có muốn đổi trạng thái sản phẩm này?')){
            $.ajax({
                url: "sold-out/" +e.value,
            }).done(function(res) {
                console.log(res)
            });
        }
    }
</script>
@endpush
