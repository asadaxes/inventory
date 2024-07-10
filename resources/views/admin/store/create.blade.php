@extends('admin.master')

@section('title','store')

@section('content')
    <div class="content">
        <div class="page-header">
            <div class="page-title">
                <h4>Store Management</h4>
                <h6>Add/Update Store</h6>
            </div>
        </div>
        <!-- /add -->
        <div class="card">
            <div class="card-body">
                <form action="{{ route('store.store') }}" method="post" enctype="multipart/form-data">
                    @csrf
                    <div class="row">
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>Name</label>
                                <input type="text" name="name" required>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>Company</label>
                                <select class="select" name="company_id" >
                                    <option>Select</option>
                                    @foreach($companies as $company)
                                        <option value="{{$company->id}}">{{$company->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>incharge</label>
                                <select class="select" name="incharge" >
                                    <option>Select</option>
                                    @foreach($users as $user)
                                        <option value="{{$user->id}}">{{$user->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
{{--                        <div class="col-lg-4 col-sm-6 col-12">--}}
{{--                            <div class="form-group">--}}
{{--                                <label>email</label>--}}
{{--                                <input type="text" name="email" required>--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <div class="col-lg-4 col-sm-6 col-12">--}}
{{--                            <div class="form-group">--}}
{{--                                <label>Phone</label>--}}
{{--                                <input type="text" name="phone" required>--}}
{{--                            </div>--}}
{{--                        </div>--}}
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label>mobile</label>
                                <input type="text" name="mobile">
                            </div>
                        </div>
{{--                        <div class="col-lg-4 col-sm-6 col-12">--}}
{{--                            <div class="form-group">--}}
{{--                                <label>fax</label>--}}
{{--                                <input type="text" name="fax">--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <div class="col-lg-4 col-sm-6 col-12">--}}
{{--                            <div class="form-group">--}}
{{--                                <label>tin</label>--}}
{{--                                <input type="text" name="tin">--}}
{{--                            </div>--}}
{{--                        </div>--}}
{{--                        <div class="col-lg-4 col-sm-6 col-12">--}}
{{--                            <div class="form-group">--}}
{{--                                <label>vat</label>--}}
{{--                                <input type="text" name="vat">--}}
{{--                            </div>--}}
{{--                        </div>--}}

{{--                        <div class="col-lg-4 col-sm-6 col-12">--}}
{{--                            <div class="form-group">--}}
{{--                                <label>license</label>--}}
{{--                                <input type="text" name="license">--}}
{{--                            </div>--}}
{{--                        </div>--}}

{{--                        <div class="col-lg-4 col-sm-6 col-12">--}}
{{--                            <div class="form-group">--}}
{{--                                <label>web</label>--}}
{{--                                <input type="text" name="web">--}}
{{--                            </div>--}}
{{--                        </div>--}}

{{--                        <div class="col-lg-4 col-sm-6 col-12">--}}
{{--                            <div class="form-group">--}}
{{--                                <label>Page Header</label>--}}
{{--                                <input type="text" name="page_header">--}}
{{--                            </div>--}}
{{--                        </div>--}}
                        <div class="col-lg-4 col-sm-6 col-12">
                            <div class="form-group">
                                <label class="d-block">Status</label>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="status" id="gender_male"
                                           value="1">
                                    <label class="form-check-label" for="gender_male">Active</label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <input class="form-check-input" type="radio" name="status" id="gender_female"
                                           value="0">
                                    <label class="form-check-label" for="gender_female">Inactive</label>
                                </div>
                            </div>
                        </div>
{{--                        <div class="col-lg-6">--}}
{{--                            <div class="form-group">--}}
{{--                                <label>Branch Logo</label>--}}
{{--                                <div class="image-upload">--}}
{{--                                    <input type="file" name="logo">--}}
{{--                                    <div class="image-uploads">--}}
{{--                                        <img src="{{asset('/')}}admin/assets/img/icons/upload.svg" alt="img">--}}
{{--                                        <h4>Drag and drop a file to upload</h4>--}}
{{--                                    </div>--}}
{{--                                </div>--}}
{{--                            </div>--}}
{{--                        </div>--}}

                        <div class="col-lg-6 col-sm-6 col-12">
                            <div class="form-group">
                                <label>Address</label>
                                <textarea id="summernote" name="address" rows="4" cols="50"></textarea>
                            </div>
                        </div>

                        <div class="col-lg-12">
                            <button type="submit" class="btn btn-submit me-2">Save</button>
                            <a href="{{route('store.index')}}" class="btn btn-cancel">Cancel</a>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- /add -->
    </div>
@endsection
