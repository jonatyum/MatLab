function varargout = PropError(varargin)
% PROPERROR MATLAB code for PropError.fig
%      PROPERROR, by itself, creates a new PROPERROR or raises the existing
%      singleton*.
%
%      H = PROPERROR returns the handle to a new PROPERROR or the handle to
%      the existing singleton*.
%
%      PROPERROR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROPERROR.M with the given input arguments.
%
%      PROPERROR('Property','Value',...) creates a new PROPERROR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before PropError_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to PropError_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help PropError

% Last Modified by GUIDE v2.5 01-Oct-2017 22:39:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @PropError_OpeningFcn, ...
                   'gui_OutputFcn',  @PropError_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before PropError is made visible.
function PropError_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to PropError (see VARARGIN)

% Choose default command line output for PropError
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes PropError wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = PropError_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in nvar.
function nvar_Callback(hObject, eventdata, handles)
% hObject    handle to nvar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns nvar contents as cell array
%        contents{get(hObject,'Value')} returns selected item from nvar
    v=get(handles.nvar,'Value');
    switch v
        case 1
            set(handles.edit1,'Enable','off');
            set(handles.edit2,'Enable','off');
            set(handles.edit3,'Enable','off');
            set(handles.edit4,'Enable','off');
            set(handles.e1,'Enable','off');
            set(handles.e2,'Enable','off');
            set(handles.e3,'Enable','off');
            set(handles.e4,'Enable','off');
            handles.nval=1;
        case 2
            set(handles.edit1,'Enable','on');
            set(handles.edit2,'Enable','on');
            set(handles.edit3,'Enable','off');
            set(handles.edit4,'Enable','off');
            set(handles.e1,'Enable','on');
            set(handles.e2,'Enable','on');
            set(handles.e3,'Enable','off');
            set(handles.e4,'Enable','off');
            handles.nval=2;
        case 3
            set(handles.edit1,'Enable','on');
            set(handles.edit2,'Enable','on');
            set(handles.edit3,'Enable','on');
            set(handles.edit4,'Enable','off');
            set(handles.e1,'Enable','on');
            set(handles.e2,'Enable','on');
            set(handles.e3,'Enable','on');
            set(handles.e4,'Enable','off');
            handles.nval=3;
        otherwise
            set(handles.edit1,'Enable','on');
            set(handles.edit2,'Enable','on');
            set(handles.edit3,'Enable','on');
            set(handles.edit4,'Enable','on');
            set(handles.e1,'Enable','on');
            set(handles.e2,'Enable','on');
            set(handles.e3,'Enable','on');
            set(handles.e4,'Enable','on');
            handles.nval=4;
    end
guidata(hObject,handles);
% --- Executes during object creation, after setting all properties.
function nvar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nvar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
val=get(hObject,'String');
newval=str2double(val);
handles.edit1=newval;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double
val=get(hObject,'String');
newval=str2double(val);
handles.edit2=newval;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
val=get(hObject,'String');
newval=str2double(val);
handles.edit3=newval;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
val=get(hObject,'String');
newval=str2double(val);
handles.edit4=newval;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function funcion_Callback(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of funcion as text
%        str2double(get(hObject,'String')) returns contents of funcion as a double
val=get(hObject,'String');
handles.funcion=val;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function funcion_CreateFcn(hObject, eventdata, handles)
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calcular.
function calcular_Callback(hObject, eventdata, handles)
% hObject    handle to calcular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    syms x;
    syms y;
    syms z;
    syms w;
    nv=get(handles.nvar,'Value');
    x0=handles.edit1;
    y0=handles.edit2;
    z0=handles.edit3;
    w0=handles.edit4;
    
    err1=handles.e1;
    err2=handles.e2;
    err3=handles.e3;
    err4=handles.e4;
    error=0;
    solucion=0;
    switch nv
        case 1
        case 2
            f=inline(handles.funcion,'x','y');
            d=inline(diff(f(x,y),x),'x','y');
            error=error+(d(x0,y0)*err1);
            d=inline(diff(f(x,y),y),'x','y');
            error=error+(d(x0,y0)*err2);
            solucion=f(x0,y0);
        case 3
            f=inline(handles.funcion,'x','y','z');
            d=inline(diff(f(x,y,z),x),'x','y','z');
            error=error+(d(x0,y0,z0)*err1);
            d=inline(diff(f(x,y,z),y),'x','y','z');
            error=error+(d(x0,y0,z0)*err2);
            d=inline(diff(f(x,y,z),z),'x','y','z');
            error=error+(d(x0,y0,z0)*err3);
            solucion=f(x0,y0,z0);
        otherwise
            f=inline(handles.funcion,'x','y','z','w');
            d=inline(diff(f(x,y,z,w),x),'x','y','z','w');
            error=error+(d(x0,y0,z0,w0)*err1);
            d=inline(diff(f(x,y,z,w),y),'x','y','z','w');
            error=error+(d(x0,y0,z0,w0)*err2);
            d=inline(diff(f(x,y,z,w),z),'x','y','z','w');
            error=error+(d(x0,y0,z0,w0)*err3);
            d=inline(diff(f(x,y,z,w),w),'x','y','z','w');
            error=error+(d(x0,y0,z0,w0)*err4);
            solucion=f(x0,y0,z0,w0);
    end
    set(handles.solucion,'String',solucion);
    set(handles.error,'String',error);
    



function e1_Callback(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e1 as text
%        str2double(get(hObject,'String')) returns contents of e1 as a double
val=get(hObject,'String');
newval=str2double(val);
handles.e1=newval;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function e1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e2_Callback(hObject, eventdata, handles)
% hObject    handle to e2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e2 as text
%        str2double(get(hObject,'String')) returns contents of e2 as a double
val=get(hObject,'String');
newval=str2double(val);
handles.e2=newval;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function e2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e3_Callback(hObject, eventdata, handles)
% hObject    handle to e3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e3 as text
%        str2double(get(hObject,'String')) returns contents of e3 as a double
val=get(hObject,'String');
newval=str2double(val);
handles.e3=newval;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function e3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e4_Callback(hObject, eventdata, handles)
% hObject    handle to e4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e4 as text
%        str2double(get(hObject,'String')) returns contents of e4 as a double
val=get(hObject,'String');
newval=str2double(val);
handles.e4=newval;
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function e4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
