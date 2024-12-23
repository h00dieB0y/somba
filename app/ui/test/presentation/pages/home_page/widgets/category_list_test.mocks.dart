// Mocks generated by Mockito 5.4.4 from annotations
// in ui/test/presentation/pages/home_page/widgets/category_list_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:flutter_bloc/flutter_bloc.dart' as _i6;
import 'package:mockito/mockito.dart' as _i1;
import 'package:ui/domain/enums/category.dart' as _i4;
import 'package:ui/presentation/cubits/products/products_cubit.dart' as _i3;
import 'package:ui/presentation/cubits/products/products_state.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeProductsState_0 extends _i1.SmartFake implements _i2.ProductsState {
  _FakeProductsState_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ProductsCubit].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductsCubit extends _i1.Mock implements _i3.ProductsCubit {
  @override
  _i4.Category get selectedCategory => (super.noSuchMethod(
        Invocation.getter(#selectedCategory),
        returnValue: _i4.Category.all,
        returnValueForMissingStub: _i4.Category.all,
      ) as _i4.Category);

  @override
  _i2.ProductsState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakeProductsState_0(
          this,
          Invocation.getter(#state),
        ),
        returnValueForMissingStub: _FakeProductsState_0(
          this,
          Invocation.getter(#state),
        ),
      ) as _i2.ProductsState);

  @override
  _i5.Stream<_i2.ProductsState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i5.Stream<_i2.ProductsState>.empty(),
        returnValueForMissingStub: _i5.Stream<_i2.ProductsState>.empty(),
      ) as _i5.Stream<_i2.ProductsState>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
        returnValueForMissingStub: false,
      ) as bool);

  @override
  _i5.Future<void> selectCategory(_i4.Category? category) =>
      (super.noSuchMethod(
        Invocation.method(
          #selectCategory,
          [category],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> fetchProducts({bool? isInitialLoad = false}) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetchProducts,
          [],
          {#isInitialLoad: isInitialLoad},
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  _i5.Future<void> refreshProducts() => (super.noSuchMethod(
        Invocation.method(
          #refreshProducts,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);

  @override
  void emit(_i2.ProductsState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onChange(_i6.Change<_i2.ProductsState>? change) => super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i5.Future<void>.value(),
        returnValueForMissingStub: _i5.Future<void>.value(),
      ) as _i5.Future<void>);
}
