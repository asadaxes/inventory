@extends('admin.master')

@section('title','company')

@section('content')
    <div class="content">
        <div class="page-header">
            <div class="page-title">
                <h4>Company Management</h4>
                <h6>Edit/Update Company</h6>
            </div>
        </div>
        <!-- /add -->
        <div class="card">
            <div class="card-body">

                <form action="{{ route('company.update',$company->id) }}" method="post" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" required value="{{$company->name}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>email</label>
                                <input type="text" name="email" required value="{{$company->email}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" name="phone" required value="{{$company->phone}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>mobile</label>
                                <input type="text" name="mobile" value="{{$company->mobile}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>fax</label>
                                <input type="text" name="fax" value="{{$company->fax}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>tin</label>
                                <input type="text" name="tin" value="{{$company->tin}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>vat</label>
                                <input type="text" name="vat" value="{{$company->vat}}">
                            </div>
                        </div>

                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>license</label>
                                <input type="text" name="license" value="{{$company->license}}">
                            </div>
                        </div>

                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>web</label>
                                <input type="text" name="web" value="{{$company->web}}">
                            </div>
                        </div>

                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>Page Header</label>
                                <input type="text" name="page_header" value="{{$company->page_header}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label class="d-block">Status</label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="status" id="gender_male"
                                           value="1" {{$company->status == 1 ? 'checked':''}}>
                                    <label class="form-check-label" for="gender_male">Active</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="status" id="gender_female"
                                           value="0" {{$company->status == 0 ? 'checked':''}}>
                                    <label class="form-check-label" for="gender_female">Inactive</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>tin_image</label>
                                <div class="image-upload">
                                    <input type="file" name="tin_image">
                                    <div class="image-uploads">
                                        <img src="{{asset('/')}}admin/assets/img/icons/upload.svg" alt="img">
                                        <h4>Drag and drop a file to upload</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="product-list">
                                <ul class="row">
                                    <li class="ps-0">
                                        <div class="productviewset">
                                            <div class="productviewsimg">
                                                <img src="{{asset($company->tin_image)}}" alt="img">
                                            </div>
                                            <div class="productviewscontent">
                                                <a href="javascript:void(0);" class="hideset"><i class="fa fa-trash-alt"></i></a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>license_image</label>
                                <div class="image-upload">
                                    <input type="file" name="license_image">
                                    <div class="image-uploads">
                                        <img src="{{asset('/')}}admin/assets/img/icons/upload.svg" alt="img">
                                        <h4>Drag and drop a file to upload</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="product-list">
                                <ul class="row">
                                    <li class="ps-0">
                                        <div class="productviewset">
                                            <div class="productviewsimg">
                                                <img src="{{asset($company->license_image)}}" alt="img">
                                            </div>
                                            <div class="productviewscontent">
                                                <a href="javascript:void(0);" class="hideset"><i class="fa fa-trash-alt"></i></a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Company Logo</label>
                                <div class="image-upload">
                                    <input type="file" name="logo">
                                    <div class="image-uploads">
                                        <img src="{{asset('/')}}admin/assets/img/icons/upload.svg" alt="img">
                                        <h4>Drag and drop a file to upload</h4>
                                    </div>
                                </div>
                            </div>
                            <div class="product-list">
                                <ul class="row">
                                    <li class="ps-0">
                                        <div class="productviewset">
                                            <div class="productviewsimg">
                                                <img src="{{asset($company->logo)}}" alt="img">
                                            </div>
                                            <div class="productviewscontent">
                                                <a href="javascript:void(0);" class="hideset"><i class="fa fa-trash-alt"></i></a>
                                            </div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        <div class="col-lg-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label>Address</label>
                                <textarea id="summernote" name="address" rows="4" cols="50">{!! $company->address !!}</textarea>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <button type="submit" class="btn btn-submit me-2">Save</button>
                            <a href="{{route('company.index')}}" class="btn btn-cancel">Cancel</a>
                        </div>
                    </div>
                </form>

            </div>
        </div>
        <!-- /add -->
    </div>


@endsection
