// Mocks generated by Mockito 5.4.4 from annotations
// in alpha_test/test/helpers/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;
import 'dart:io' as _i14;

import 'package:alpha_test/core/error/failure.dart' as _i6;
import 'package:alpha_test/features/file_mangement/data_layer/data_source/local/file_mangement_api_service.dart'
    as _i17;
import 'package:alpha_test/features/file_mangement/domain_layer/repository/file_mangement_repository.dart'
    as _i2;
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/creat_file_usecase.dart'
    as _i4;
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/create_folder_usecase.dart'
    as _i7;
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/delete_file_usecase.dart'
    as _i8;
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/delete_folder_usecase.dart'
    as _i9;
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/edit_name_file_usecase.dart'
    as _i10;
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/edit_name_folder_usecase.dart'
    as _i11;
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/get_content_file_usecase.dart'
    as _i12;
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/get_files_and_folders_usecase.dart'
    as _i13;
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/get_sub_files_and_folders_usecase.dart'
    as _i15;
import 'package:alpha_test/features/file_mangement/domain_layer/usecases/write_content_file_usecase.dart'
    as _i16;
import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

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

class _FakeFileMangementRepository_0 extends _i1.SmartFake
    implements _i2.FileMangementRepository {
  _FakeFileMangementRepository_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [CreatFileUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockCreatFileUsecase extends _i1.Mock implements _i4.CreatFileUsecase {
  MockCreatFileUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FileMangementRepository get fileMangementRepository =>
      (super.noSuchMethod(
        Invocation.getter(#fileMangementRepository),
        returnValue: _FakeFileMangementRepository_0(
          this,
          Invocation.getter(#fileMangementRepository),
        ),
      ) as _i2.FileMangementRepository);

  @override
  set fileMangementRepository(
          _i2.FileMangementRepository? _fileMangementRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #fileMangementRepository,
          _fileMangementRepository,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> call(
    dynamic path,
    dynamic name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [
            path,
            name,
          ],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [
              path,
              name,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);
}

/// A class which mocks [CreateFolderUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockCreateFolderUsecase extends _i1.Mock
    implements _i7.CreateFolderUsecase {
  MockCreateFolderUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FileMangementRepository get fileMangementRepository =>
      (super.noSuchMethod(
        Invocation.getter(#fileMangementRepository),
        returnValue: _FakeFileMangementRepository_0(
          this,
          Invocation.getter(#fileMangementRepository),
        ),
      ) as _i2.FileMangementRepository);

  @override
  set fileMangementRepository(
          _i2.FileMangementRepository? _fileMangementRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #fileMangementRepository,
          _fileMangementRepository,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> call(
    dynamic path,
    dynamic name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [
            path,
            name,
          ],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [
              path,
              name,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);
}

/// A class which mocks [DeleteFileUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeleteFileUsecase extends _i1.Mock implements _i8.DeleteFileUsecase {
  MockDeleteFileUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FileMangementRepository get fileMangementRepository =>
      (super.noSuchMethod(
        Invocation.getter(#fileMangementRepository),
        returnValue: _FakeFileMangementRepository_0(
          this,
          Invocation.getter(#fileMangementRepository),
        ),
      ) as _i2.FileMangementRepository);

  @override
  set fileMangementRepository(
          _i2.FileMangementRepository? _fileMangementRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #fileMangementRepository,
          _fileMangementRepository,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> call(dynamic path) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [path],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [path],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);
}

/// A class which mocks [DeleteFolderUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockDeleteFolderUsecase extends _i1.Mock
    implements _i9.DeleteFolderUsecase {
  MockDeleteFolderUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FileMangementRepository get fileMangementRepository =>
      (super.noSuchMethod(
        Invocation.getter(#fileMangementRepository),
        returnValue: _FakeFileMangementRepository_0(
          this,
          Invocation.getter(#fileMangementRepository),
        ),
      ) as _i2.FileMangementRepository);

  @override
  set fileMangementRepository(
          _i2.FileMangementRepository? _fileMangementRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #fileMangementRepository,
          _fileMangementRepository,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> call(dynamic path) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [path],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [path],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);
}

/// A class which mocks [EditNameFileUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockEditNameFileUsecase extends _i1.Mock
    implements _i10.EditNameFileUsecase {
  MockEditNameFileUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FileMangementRepository get fileMangementRepository =>
      (super.noSuchMethod(
        Invocation.getter(#fileMangementRepository),
        returnValue: _FakeFileMangementRepository_0(
          this,
          Invocation.getter(#fileMangementRepository),
        ),
      ) as _i2.FileMangementRepository);

  @override
  set fileMangementRepository(
          _i2.FileMangementRepository? _fileMangementRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #fileMangementRepository,
          _fileMangementRepository,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> call(
    dynamic path,
    dynamic name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [
            path,
            name,
          ],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [
              path,
              name,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);
}

/// A class which mocks [EditNameFolderUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockEditNameFolderUsecase extends _i1.Mock
    implements _i11.EditNameFolderUsecase {
  MockEditNameFolderUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FileMangementRepository get fileMangementRepository =>
      (super.noSuchMethod(
        Invocation.getter(#fileMangementRepository),
        returnValue: _FakeFileMangementRepository_0(
          this,
          Invocation.getter(#fileMangementRepository),
        ),
      ) as _i2.FileMangementRepository);

  @override
  set fileMangementRepository(
          _i2.FileMangementRepository? _fileMangementRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #fileMangementRepository,
          _fileMangementRepository,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> call(
    dynamic path,
    dynamic name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [
            path,
            name,
          ],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [
              path,
              name,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);
}

/// A class which mocks [GetContentFileUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetContentFileUsecase extends _i1.Mock
    implements _i12.GetContentFileUsecase {
  MockGetContentFileUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FileMangementRepository get fileMangementRepository =>
      (super.noSuchMethod(
        Invocation.getter(#fileMangementRepository),
        returnValue: _FakeFileMangementRepository_0(
          this,
          Invocation.getter(#fileMangementRepository),
        ),
      ) as _i2.FileMangementRepository);

  @override
  set fileMangementRepository(
          _i2.FileMangementRepository? _fileMangementRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #fileMangementRepository,
          _fileMangementRepository,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Either<_i6.Failure, dynamic>> call(dynamic path) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [path],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, dynamic>>.value(
            _FakeEither_1<_i6.Failure, dynamic>(
          this,
          Invocation.method(
            #call,
            [path],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, dynamic>>);
}

/// A class which mocks [GetFilesAndFoldersUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetFilesAndFoldersUsecase extends _i1.Mock
    implements _i13.GetFilesAndFoldersUsecase {
  MockGetFilesAndFoldersUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FileMangementRepository get fileMangementRepository =>
      (super.noSuchMethod(
        Invocation.getter(#fileMangementRepository),
        returnValue: _FakeFileMangementRepository_0(
          this,
          Invocation.getter(#fileMangementRepository),
        ),
      ) as _i2.FileMangementRepository);

  @override
  set fileMangementRepository(
          _i2.FileMangementRepository? _fileMangementRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #fileMangementRepository,
          _fileMangementRepository,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i14.FileSystemEntity>>> call(
          dynamic string) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [string],
        ),
        returnValue: _i5
            .Future<_i3.Either<_i6.Failure, List<_i14.FileSystemEntity>>>.value(
            _FakeEither_1<_i6.Failure, List<_i14.FileSystemEntity>>(
          this,
          Invocation.method(
            #call,
            [string],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, List<_i14.FileSystemEntity>>>);
}

/// A class which mocks [GetSubFilesAndFoldersUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetSubFilesAndFoldersUsecase extends _i1.Mock
    implements _i15.GetSubFilesAndFoldersUsecase {
  MockGetSubFilesAndFoldersUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FileMangementRepository get fileMangementRepository =>
      (super.noSuchMethod(
        Invocation.getter(#fileMangementRepository),
        returnValue: _FakeFileMangementRepository_0(
          this,
          Invocation.getter(#fileMangementRepository),
        ),
      ) as _i2.FileMangementRepository);

  @override
  set fileMangementRepository(
          _i2.FileMangementRepository? _fileMangementRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #fileMangementRepository,
          _fileMangementRepository,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i14.FileSystemEntity>>> call(
          dynamic path) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [path],
        ),
        returnValue: _i5
            .Future<_i3.Either<_i6.Failure, List<_i14.FileSystemEntity>>>.value(
            _FakeEither_1<_i6.Failure, List<_i14.FileSystemEntity>>(
          this,
          Invocation.method(
            #call,
            [path],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, List<_i14.FileSystemEntity>>>);
}

/// A class which mocks [WriteContentFileUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockWriteContentFileUsecase extends _i1.Mock
    implements _i16.WriteContentFileUsecase {
  MockWriteContentFileUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.FileMangementRepository get fileMangementRepository =>
      (super.noSuchMethod(
        Invocation.getter(#fileMangementRepository),
        returnValue: _FakeFileMangementRepository_0(
          this,
          Invocation.getter(#fileMangementRepository),
        ),
      ) as _i2.FileMangementRepository);

  @override
  set fileMangementRepository(
          _i2.FileMangementRepository? _fileMangementRepository) =>
      super.noSuchMethod(
        Invocation.setter(
          #fileMangementRepository,
          _fileMangementRepository,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> call(
    dynamic path,
    dynamic content,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [
            path,
            content,
          ],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #call,
            [
              path,
              content,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);
}

/// A class which mocks [FileMangementRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileMangementRepository extends _i1.Mock
    implements _i2.FileMangementRepository {
  MockFileMangementRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i14.FileSystemEntity>>>
      getFilesAndFolders() => (super.noSuchMethod(
            Invocation.method(
              #getFilesAndFolders,
              [],
            ),
            returnValue: _i5.Future<
                    _i3.Either<_i6.Failure, List<_i14.FileSystemEntity>>>.value(
                _FakeEither_1<_i6.Failure, List<_i14.FileSystemEntity>>(
              this,
              Invocation.method(
                #getFilesAndFolders,
                [],
              ),
            )),
          ) as _i5
              .Future<_i3.Either<_i6.Failure, List<_i14.FileSystemEntity>>>);

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> createFile(
    dynamic path,
    dynamic name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #createFile,
          [
            path,
            name,
          ],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #createFile,
            [
              path,
              name,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> createFolder(
    dynamic path,
    dynamic name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #createFolder,
          [
            path,
            name,
          ],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #createFolder,
            [
              path,
              name,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);

  @override
  _i5.Future<_i3.Either<_i6.Failure, dynamic>> getContentFile(dynamic path) =>
      (super.noSuchMethod(
        Invocation.method(
          #getContentFile,
          [path],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, dynamic>>.value(
            _FakeEither_1<_i6.Failure, dynamic>(
          this,
          Invocation.method(
            #getContentFile,
            [path],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, dynamic>>);

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> writeContentFile(
    dynamic path,
    dynamic content,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #writeContentFile,
          [
            path,
            content,
          ],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #writeContentFile,
            [
              path,
              content,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> editNameFile(
    dynamic path,
    dynamic name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #editNameFile,
          [
            path,
            name,
          ],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #editNameFile,
            [
              path,
              name,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> editNameFolder(
    dynamic path,
    dynamic name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #editNameFolder,
          [
            path,
            name,
          ],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #editNameFolder,
            [
              path,
              name,
            ],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> deleteFile(dynamic path) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteFile,
          [path],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #deleteFile,
            [path],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);

  @override
  _i5.Future<_i3.Either<_i6.Failure, bool>> deleteFolder(dynamic path) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteFolder,
          [path],
        ),
        returnValue: _i5.Future<_i3.Either<_i6.Failure, bool>>.value(
            _FakeEither_1<_i6.Failure, bool>(
          this,
          Invocation.method(
            #deleteFolder,
            [path],
          ),
        )),
      ) as _i5.Future<_i3.Either<_i6.Failure, bool>>);

  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i14.FileSystemEntity>>>
      getSubFilesAndFolders(dynamic path) => (super.noSuchMethod(
            Invocation.method(
              #getSubFilesAndFolders,
              [path],
            ),
            returnValue: _i5.Future<
                    _i3.Either<_i6.Failure, List<_i14.FileSystemEntity>>>.value(
                _FakeEither_1<_i6.Failure, List<_i14.FileSystemEntity>>(
              this,
              Invocation.method(
                #getSubFilesAndFolders,
                [path],
              ),
            )),
          ) as _i5
              .Future<_i3.Either<_i6.Failure, List<_i14.FileSystemEntity>>>);
}

/// A class which mocks [FileMangementApiService].
///
/// See the documentation for Mockito's code generation for more information.
class MockFileMangementApiService extends _i1.Mock
    implements _i17.FileMangementApiService {
  MockFileMangementApiService() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.Future<List<_i14.FileSystemEntity>> getFilesAndFolders() =>
      (super.noSuchMethod(
        Invocation.method(
          #getFilesAndFolders,
          [],
        ),
        returnValue: _i5.Future<List<_i14.FileSystemEntity>>.value(
            <_i14.FileSystemEntity>[]),
      ) as _i5.Future<List<_i14.FileSystemEntity>>);

  @override
  _i5.Future<bool> createFile(
    dynamic path,
    dynamic name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #createFile,
          [
            path,
            name,
          ],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<bool> createFolder(
    dynamic path,
    dynamic name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #createFolder,
          [
            path,
            name,
          ],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<dynamic> getContentFile(dynamic path) => (super.noSuchMethod(
        Invocation.method(
          #getContentFile,
          [path],
        ),
        returnValue: _i5.Future<dynamic>.value(),
      ) as _i5.Future<dynamic>);

  @override
  _i5.Future<bool> writeContentFile(
    dynamic path,
    dynamic content,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #writeContentFile,
          [
            path,
            content,
          ],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<bool> editNameFile(
    dynamic path,
    dynamic name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #editNameFile,
          [
            path,
            name,
          ],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<bool> editNameFolder(
    dynamic path,
    dynamic name,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #editNameFolder,
          [
            path,
            name,
          ],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<bool> deleteFile(dynamic path) => (super.noSuchMethod(
        Invocation.method(
          #deleteFile,
          [path],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<bool> deleteFolder(dynamic path) => (super.noSuchMethod(
        Invocation.method(
          #deleteFolder,
          [path],
        ),
        returnValue: _i5.Future<bool>.value(false),
      ) as _i5.Future<bool>);

  @override
  _i5.Future<List<_i14.FileSystemEntity>> getSubFilesAndFolders(dynamic path) =>
      (super.noSuchMethod(
        Invocation.method(
          #getSubFilesAndFolders,
          [path],
        ),
        returnValue: _i5.Future<List<_i14.FileSystemEntity>>.value(
            <_i14.FileSystemEntity>[]),
      ) as _i5.Future<List<_i14.FileSystemEntity>>);
}
