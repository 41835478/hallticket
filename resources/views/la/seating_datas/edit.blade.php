@extends("la.layouts.app")

@section("contentheader_title")
	<a href="{{ url(config('laraadmin.adminRoute') . '/seating_datas') }}">Seating Data</a> :
@endsection
@section("contentheader_description", $seating_data->$view_col)
@section("section", "Seating Datas")
@section("section_url", url(config('laraadmin.adminRoute') . '/seating_datas'))
@section("sub_section", "Edit")

@section("htmlheader_title", "Seating Datas Edit : ".$seating_data->$view_col)

@section("main-content")

@if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif

<div class="box">
	<div class="box-header">
		
	</div>
	<div class="box-body">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				{!! Form::model($seating_data, ['route' => [config('laraadmin.adminRoute') . '.seating_datas.update', $seating_data->id ], 'method'=>'PUT', 'id' => 'seating_data-edit-form']) !!}
					@la_form($module)
					
					{{--
					@la_input($module, 'register_number')
					@la_input($module, 'block')
					@la_input($module, 'hall_number')
					@la_input($module, 'seat_number')
					@la_input($module, 'row')
					@la_input($module, 'side')
					--}}
                    <br>
					<div class="form-group">
						{!! Form::submit( 'Update', ['class'=>'btn btn-success']) !!} <button class="btn btn-default pull-right"><a href="{{ url(config('laraadmin.adminRoute') . '/seating_datas') }}">Cancel</a></button>
					</div>
				{!! Form::close() !!}
			</div>
		</div>
	</div>
</div>

@endsection

@push('scripts')
<script>
$(function () {
	$("#seating_data-edit-form").validate({
		
	});
});
</script>
@endpush
