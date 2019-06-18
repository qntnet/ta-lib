pushd library
pushd make\cdd\win32\msvc
nmake
IF %ERRORLEVEL% == 1; exit 1
popd
pushd make\cdr\win32\msvc
nmake
IF %ERRORLEVEL% == 1; exit 1
popd
pushd make\cmd\win32\msvc
nmake
IF %ERRORLEVEL% == 1; exit 1
popd
pushd make\cmr\win32\msvc
nmake
IF %ERRORLEVEL% == 1; exit 1
popd
pushd make\csd\win32\msvc
nmake
IF %ERRORLEVEL% == 1; exit 1
popd
pushd make\csr\win32\msvc
nmake
IF %ERRORLEVEL% == 1; exit 1
popd
popd

pushd wrapper
python setup.py build --compiler msvc
python setup.py install --prefix=%PREFIX%
popd