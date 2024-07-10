@extends('admin.master')

@section('title','branch')

@section('content')
    <div class="content">
        <div class="page-header">
            <div class="page-title">
                <h4>Branch Management</h4>
                <h6>Edit/Update Branch</h6>
            </div>
        </div>
        <!-- /add -->
        <div class="card">
            <div class="card-body">
                <form action="{{ route('branch.update',$branch->id) }}" method="post" enctype="multipart/form-data">
                    @csrf
                    @method('PUT')
                    <div class="row">
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" required value="{{$branch->name}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>Company</label>
                                <select class="select" name="company_id" >
                                    <option>Select</option>
                                    @foreach($companies as $company)
                                        <option value="{{$company->id}}" {{$company->id == $branch->company_id ?"selected":''}}>{{$company->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>email</label>
                                <input type="text" name="email" required value="{{$branch->email}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>Phone</label>
                                <input type="text" name="phone" required value="{{$branch->phone}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>mobile</label>
                                <input type="text" name="mobile" value="{{$branch->mobile}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>fax</label>
                                <input type="text" name="fax" value="{{$branch->fax}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>web</label>
                                <input type="text" name="web" value="{{$branch->web}}">
                            </div>
                        </div>

                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>Page Header</label>
                                <input type="text" name="page_header" value="{{$branch->page_header}}">
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label class="d-block">Status</label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="status" id="gender_male"
                                           value="1" {{$branch->status == 1 ? 'checked':''}}>
                                    <label class="form-check-label" for="gender_male">Active</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="status" id="gender_female"
                                           value="0" {{$branch->status == 0 ? 'checked':''}}>
                                    <label class="form-check-label" for="gender_female">Inactive</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="form-group">
                                <label>Branch Logo</label>
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
                                                <img src="{{asset($branch->logo)}}" alt="img">
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
                                <textarea id="summernote" name="address" rows="4" cols="50">{!! $branch->address !!}</textarea>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <button type="submit" class="btn btn-submit me-2">Save</button>
                            <a href="{{route('branch.index')}}" class="btn btn-cancel">Cancel</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- /add -->
    </div>


@endsection
