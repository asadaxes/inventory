@extends('admin.master')

@section('title','MFS Accounts List')

@section('content')
    <div class="content">
        <div class="page-header">
            <div class="page-title">
                <h4>MFS Accounts List</h4>
                <h6>Manage Your MFS Accounts</h6>
            </div>
            <div class="page-btn">
                <a href="{{route('bank_mobile.create')}}" class="btn btn-added"><img src="{{asset('/')}}admin/assets/img/icons/plus.svg"  class="me-2" alt="img">Add Account</a>
            </div>
        </div>


        <!-- /product list -->
        <div class="card">
            <div class="card-body">
                <div class="table-top">
                    <div class="search-set">
                        <div class="search-path">
                            <a class="btn btn-filter" id="filter_search">
                                <img src="{{asset('/')}}admin/assets/img/icons/filter.svg" alt="img">
                                <span><img src="{{asset('/')}}admin/assets/img/icons/closes.svg" alt="img"></span>
                            </a>
                        </div>
                        <div class="search-input">
                            <a class="btn btn-searchset"><img src="{{asset('/')}}admin/assets/img/icons/search-white.svg" alt="img"></a>
                        </div>
                    </div>
                    <div class="wordset">
                        <ul>
                            <li>
                                <a data-bs-toggle="tooltip" data-bs-placement="top" title="pdf"><img src="{{asset('/')}}admin/assets/img/icons/pdf.svg" alt="img"></a>
                            </li>
                            <li>
                                <a data-bs-toggle="tooltip" data-bs-placement="top" title="excel"><img src="{{asset('/')}}admin/assets/img/icons/excel.svg" alt="img"></a>
                            </li>
                            <li>
                                <a data-bs-toggle="tooltip" data-bs-placement="top" title="print"><img src="{{asset('/')}}admin/assets/img/icons/printer.svg" alt="img"></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /Filter -->
                <div class="card" id="filter_inputs">
                    <div class="card-body pb-0">
                        <div class="row">
                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <input type="text" placeholder="Enter Class Name">
                                </div>
                            </div>
                            <div class="col-lg-3 col-sm-6 col-12">
                                <div class="form-group">
                                    <input type="text" placeholder="Enter Class Bname">
                                </div>
                            </div>
                            <div class="col-lg-1 col-sm-6 col-12 ms-auto">
                                <div class="form-group">
                                    <a class="btn btn-filters ms-auto"><img src="{{asset('/')}}admin/assets/img/icons/search-whites.svg" alt="img"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Filter -->
                <div class="table-responsive">
                    <table class="table datanew">
                        <thead>
                        <tr>
                            <th>
                                <label class="checkboxs">
                                    <input type="checkbox" id="select-all">
                                    <span class="checkmarks"></span>
                                </label>
                            </th>
                            <th>#</th>
                            <th>MFS Provider</th>
                            <th>Account No.</th>
                            <th>Account Name</th>
                            <th>Balance</th>
                            <th>Deposit</th>
                            <th>Withdrawn</th>
                            <th>Action</th>
                        </tr>
                        </thead>
                        <tbody>
                        @foreach($accounts as $account)
                            <tr>
                                <td>
                                    <label class="checkboxs">
                                        <input type="checkbox">
                                        <span class="checkmarks"></span>
                                    </label>
                                </td>
                                <td>{{ $loop->iteration }}</td>
                                <td>
                                    @if($account->mfs_provider == 'bkash')
                                        <img src="{{ asset('admin/assets/img/mfs/bkash.webp') }}" class="img-fluid" width="55px">
                                    @endif

                                    @if($account->mfs_provider == 'nagad')
                                        <img src="{{ asset('admin/assets/img/mfs/nagad.webp') }}" class="img-fluid" width="55px">
                                    @endif

                                    @if($account->mfs_provider == 'upay')
                                        <img src="{{ asset('admin/assets/img/mfs/upay.webp') }}" class="img-fluid" width="55px">
                                    @endif

                                    @if($account->mfs_provider == 'rocket')
                                        <img src="{{ asset('admin/assets/img/mfs/rocket.webp') }}" class="img-fluid" width="55px">
                                    @endif

                                    @if($account->mfs_provider == 'mcash')
                                        <img src="{{ asset('admin/assets/img/mfs/mcash.webp') }}" class="img-fluid" width="55px">
                                    @endif

                                    @if($account->mfs_provider == 'meghnapay')
                                        <img src="{{ asset('admin/assets/img/mfs/meghnapay.webp') }}" class="img-fluid" width="55px">
                                    @endif

                                    @if($account->mfs_provider == 'surecash')
                                        <img src="{{ asset('admin/assets/img/mfs/surecash.webp') }}" class="img-fluid" width="55px">
                                    @endif

                                    @if($account->mfs_provider == 'tap')
                                        <img src="{{ asset('admin/assets/img/mfs/tap.webp') }}" class="img-fluid" width="55px">
                                    @endif

                                    @if($account->mfs_provider == 'telecash')
                                        <img src="{{ asset('admin/assets/img/mfs/telecash.webp') }}" class="img-fluid" width="55px">
                                    @endif

                                    @if($account->mfs_provider == 'mycash')
                                        <img src="{{ asset('admin/assets/img/mfs/mycash.webp') }}" class="img-fluid" width="55px">
                                    @endif
                                </td>
                                <td>{{ $account->account_no }}</td>
                                <td>{{ $account->account_name }}</td>
                                <td>&#x9F3;{{ $account->balance }}</td>
                                <td>&#x9F3;{{ $account->deposit }}</td>
                                <td>&#x9F3;{{ $account->withdrawn }}</td>
                                <td>
                                    @can('update bank_mobile')
                                        <a class="me-3" href="{{route('bank_mobile.edit',$account->id)}}">
                                            <img src="{{asset('/')}}admin/assets/img/icons/edit.svg" alt="img">
                                        </a>
                                    @endcan
                                    @can('delete bank_mobile')
                                        <form action="{{route('bank_mobile.destroy',$account->id)}}" method="POST" class="sr-dl" >
                                            @csrf
                                            @method('delete')
                                            <a class="delete_confirm" href="javascript:void(0);">
                                                <img src="{{asset('/')}}admin/assets/img/icons/delete.svg" alt="img">
                                            </a>
                                        </form>
                                    @endcan
                                </td>
                            </tr>
                        @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <!-- /mfs list -->
    </div>
@endsection

@section('js')
{{--    @include('admin.include.plugin.datatable')--}}
@endsection
