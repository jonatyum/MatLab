function varargout = Taylor(varargin)
% TAYLOR MATLAB code for Taylor.fig
%      TAYLOR, by itself, creates a new TAYLOR or raises the existing
%      singleton*.
%
%      H = TAYLOR returns the handle to a new TAYLOR or the handle to
%      the existing singleton*.
%
%      TAYLOR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TAYLOR.M with the given input arguments.
%
%      TAYLOR('Property','Value',...) creates a new TAYLOR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Taylor_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Taylor_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Taylor

% Last Modified by GUIDE v2.5 30-Sep-2017 21:44:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Taylor_OpeningFcn, ...
                   'gui_OutputFcn',  @Taylor_OutputFcn, ...
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


% --- Executes just before Taylor is made visible.
function Taylor_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Taylor (see VARARGIN)

% Choose default command line output for Taylor
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Taylor wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Taylor_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



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



function xi_Callback(hObject, eventdata, handles)
% hObject    handle to xi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xi as text
%        str2double(get(hObject,'String')) returns contents of xi as a double
    val=get(hObject,'String');
    newval= str2double(val);
    handles.xi=newval;
    guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function xi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x1_Callback(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x1 as text
%        str2double(get(hObject,'String')) returns contents of x1 as a double
    val=get(hObject,'String');
    newval= str2double(val);
    handles.x1=newval;
    guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function x1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in generar.
function generar_Callback(hObject, eventdata, handles)
% hObject    handle to generar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    hold off;
    syms x;
    format long;
    fx=inline(handles.funcion,'x');
    x0=handles.xi;
    x1=handles.x1;
    h=x1-x0;
    i=1;
    cons=0.00005;
    error=abs(fx(x1)-fx(x0));
    f=[];
    ri=[];
    ri(1)=error;
    f(1)=fx(x0);
    fact=1;
    func=handles.funcion;
    ejex=0:0.01:10;
    while error>cons
        d=diff(fx(x),i);
        deri=inline(d(1));
        i=i+1;
        %f(i)=f(i-1)+ri(i-1);
        s=ri(i-1);
        elev=(h^(i-1));
        %d=((deri(x0)/fact)*elev);              
        func=[func,'+','((',char(deri),')','/',num2str(fact),')','*',num2str(elev)];
        %func
        paraerror=inline(char(func),'x');
        algo=str2double(num2str(paraerror(x0)));
        f(i)=algo*1;
        cf(i)=algo;
        ri(i)=abs(fx(x1)-algo);
        error=ri(i);
        fact=fact*i;      
        if i > 1000
           break; 
        end
    end
    set(handles.error,'String',error);
    set(handles.solucion,'String',f(i));
    set(handles.iter,'String',i-1);
    ft=inline(func,'x');
    plot(handles.axes1,ejex,fx(ejex),'red','LineWidth',2.5);
    hold on;
    plot(handles.axes1,ejex,ft(ejex),'blue','LineWidth',1.5);
    grid;
    
    
