function varargout = OpeacionesTC(varargin)
% OPEACIONESTC MATLAB code for OpeacionesTC.fig
%      OPEACIONESTC, by itself, creates a new OPEACIONESTC or raises the existing
%      singleton*.
%
%      H = OPEACIONESTC returns the handle to a new OPEACIONESTC or the handle to
%      the existing singleton*.
%
%      OPEACIONESTC('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPEACIONESTC.M with the given input arguments.
%
%      OPEACIONESTC('Property','Value',...) creates a new OPEACIONESTC or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before OpeacionesTC_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to OpeacionesTC_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help OpeacionesTC

% Last Modified by GUIDE v2.5 24-Oct-2015 21:11:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @OpeacionesTC_OpeningFcn, ...
                   'gui_OutputFcn',  @OpeacionesTC_OutputFcn, ...
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


% --- Executes just before OpeacionesTC is made visible.
function OpeacionesTC_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to OpeacionesTC (see VARARGIN)

% Choose default command line output for OpeacionesTC
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes OpeacionesTC wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = OpeacionesTC_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in senal1.
function senal1_Callback(hObject, eventdata, handles)
funcion=get(hObject,'String')
eleccion=get(hObject,'Value');
A=str2num(get(handles.amp1,'String'));
E=str2num(get(handles.esc1,'String'));
D=str2num(get(handles.des1,'String'));
%if strcmp(get(handles.amp1,'String'),' ')
%    A=str2num('1');
%end
%if strcmp(get(handles.esc1,'String'),' ')
%    E=str2num('1');
%end
%if strcmp(get(handles.des1,'String'),' ')
%    D=str2num('0');
%end
switch eleccion
    case 1
        %     fun=escalon(t);
        axes(handles.axes2);
        t=[-10:0.01:10];
        plot(t,A*escalon(E*(t+D)), 'linewidth',3)
        fun1=A*escalon(E*(t+D));
    case 2
        %rampa(t)
        axes(handles.axes2);
        t=[-10:0.01:10];
        plot(t,A*rampa(E*(t+D)), 'linewidth',3)
        fun1=A*rampa(E*(t+D));
    case 3
        axes(handles.axes2);
        t=[-10:0.01:10];
        plot(t,A*rectangulo(E*(t+D)), 'linewidth',3)
        fun1=A*rectangulo(E*(t+D));
    case 4
        axes(handles.axes2);
        t=[-10:0.01:10];
        plot(t,A*tri(E*(t+D)), 'linewidth',3)
        fun1=A*tri(E*(t+D));
    case 5
        axes(handles.axes2);
        t=[-10:0.01:10];
        plot(t,A*sinc(E*(t+D)), 'linewidth',3)
        fun1=A*sinc(E*(t+D));
    case 6
        axes(handles.axes2);
        t=[-10:0.01:10];
        n=7;
        plot(t,A*drcl(E*(t+D),n), 'linewidth',3)
        fun1=A*drcl(E*(t+D),n);
    case 7
        axes(handles.axes2);
        t=[-10:0.01:10];
        plot(t,A*sin(E*(t+D)), 'linewidth',3)
        fun1=A*sin(E*(t+D));
    case 8
        axes(handles.axes2);
        t=[-10:0.01:10];
        plot(t,A*cos(E*(t+D)), 'linewidth',3)
        fun1=A*cos(E*(t+D));
        
end
grid on
%eval=funcion(eleccion);
s=eleccion;
%
%syms x;
%fun=inline(s);

%set(handles.amp1,'string',s)
set(handles.senal1, 'UserData', s);
set(handles.senal1, 'UserData', fun1);
grid on

% hObject    handle to senal1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns senal1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from senal1


% --- Executes during object creation, after setting all properties.
function senal1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to senal1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in senal2.
function senal2_Callback(hObject, eventdata, handles)
funcion=get(hObject,'String')
eleccion=get(hObject,'Value');
A=str2num(get(handles.amp2,'String'));
E=str2num(get(handles.esc2,'String'));
D=str2num(get(handles.des2,'String'));
%if strcmp(get(handles.amp1,'String'),' ')
%    A=str2num('1');
%end
%if strcmp(get(handles.esc1,'String'),' ')
%    E=str2num('1');
%end
%if strcmp(get(handles.des1,'String'),' ')
%    D=str2num('0');
%end
switch eleccion
    case 1
        %     fun=escalon(t);
        axes(handles.axes3);
        t=[-10:0.01:10];
        plot(t,A*escalon(E*(t+D)), 'linewidth',3)
        fun=A*escalon(E*(t+D));
    case 2
        %rampa(t)
        axes(handles.axes3);
        t=[-10:0.01:10];
        plot(t,A*rampa(E*(t+D)), 'linewidth',3)
        fun=A*rampa(E*(t+D));
    case 3
        axes(handles.axes3);
        t=[-10:0.01:10];
        plot(t,A*rectangulo(E*(t+D)), 'linewidth',3)
        fun=A*rectangulo(E*(t+D));
    case 4
        axes(handles.axes3);
        t=[-10:0.01:10];
        plot(t,A*tri(E*(t+D)), 'linewidth',3)
        fun=A*tri(E*(t+D));
    case 5
        axes(handles.axes3);
        t=[-10:0.01:10];
        plot(t,A*sinc(E*(t+D)), 'linewidth',3)
        fun=A*sinc(E*(t+D));
    case 6
        axes(handles.axes3);
        t=[-10:0.01:10];
        n=7;
        plot(t,A*drcl(E*(t+D),n), 'linewidth',3)
        fun=A*drcl(E*(t+D),n);
        case 7
        axes(handles.axes3);
        t=[-10:0.01:10];
        plot(t,A*sin(E*(t+D)), 'linewidth',3)
        fun=A*sin(E*(t+D));
    case 8
        axes(handles.axes3);
        t=[-10:0.01:10];
        plot(t,A*cos(E*(t+D)), 'linewidth',3)
        fun=A*cos(E*(t+D));
end
grid on
%eval=funcion(eleccion);
s1=eleccion;
%axes(handles.axes3);
%syms x;
%fun=inline(s1);
set(handles.senal2, 'UserData', s1);
set(handles.senal2, 'UserData', fun);
%x=[-10:0.01:10];
%plot(x,fun(x))
grid on
% hObject    handle to senal2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns senal2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from senal2


% --- Executes during object creation, after setting all properties.
function senal2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to senal2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
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



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
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



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function amp2_Callback(hObject, eventdata, handles)
% hObject    handle to amp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amp2 as text
%        str2double(get(hObject,'String')) returns contents of amp2 as a double


% --- Executes during object creation, after setting all properties.
function amp2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function esc2_Callback(hObject, eventdata, handles)
% hObject    handle to esc2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of esc2 as text
%        str2double(get(hObject,'String')) returns contents of esc2 as a double


% --- Executes during object creation, after setting all properties.
function esc2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to esc2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function des2_Callback(hObject, eventdata, handles)
% hObject    handle to des2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of des2 as text
%        str2double(get(hObject,'String')) returns contents of des2 as a double


% --- Executes during object creation, after setting all properties.
function des2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to des2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function amp1_Callback(hObject, eventdata, handles)
% hObject    handle to amp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amp1 as text
%        str2double(get(hObject,'String')) returns contents of amp1 as a double


% --- Executes during object creation, after setting all properties.
function amp1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function esc1_Callback(hObject, eventdata, handles)
% hObject    handle to esc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of esc1 as text
%        str2double(get(hObject,'String')) returns contents of esc1 as a double


% --- Executes during object creation, after setting all properties.
function esc1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to esc1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function des1_Callback(hObject, eventdata, handles)
% hObject    handle to des1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of des1 as text
%        str2double(get(hObject,'String')) returns contents of des1 as a double


% --- Executes during object creation, after setting all properties.
function des1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to des1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in opera.
function opera_Callback(hObject, eventdata, handles)
funcion1=get(hObject,'String');
eleccion1=get(hObject,'Value');
s = get(handles.senal1, 'UserData');
s1 = get(handles.senal2, 'UserData');
%switch eleccion1
%    case 1
%        suma=strcat(s,'+',s1);
 %       sa=char(suma)
        %axes(handles.axes4);
        %syms x;
        %fun=inline(sa);
        %x=[-10:0.01:10];
        %plot(x,fun(x))
  %  case 2
   %     resta=strcat(s,'-',s1);
    %    sa=char(resta)
        %axes(handles.axes4);
        %syms x;
        %fun=inline(sa);
        %x=[-5:0.01:5];
        %plot(x,fun(x))
  %  case 3
   %     mult=strcat(s,'.*',s1);
    %    sa=char(mult)
        %axes(handles.axes4);
        %syms x;
        %fun=inline(sa);
        %x=[-5:0.01:5];
        %plot(x,fun(x))
   % case 4
    %    div=strcat(s,'./',s1);
     %   sa=char(div)
      %  axes(handles.axes4);
        %syms x;
        %fun=inline(sa);
        %x=[-5:0.01:5];
        %plot(x,fun(x))
%end
%eval=funcion1(eleccion1);
set(handles.opera, 'UserData', eleccion1);

grid on
% hObject    handle to opera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns opera contents as cell array
%        contents{get(hObject,'Value')} returns selected item from opera


% --- Executes during object creation, after setting all properties.
function opera_CreateFcn(hObject, eventdata, handles)
% hObject    handle to opera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
eleccion1 = get(handles.opera, 'UserData');
s = get(handles.senal1, 'UserData');
s1 = get(handles.senal2, 'UserData');
fun = get(handles.senal2, 'UserData');
fun1 = get(handles.senal1, 'UserData');
%syms x;
%fun=inline(sa)
axes(handles.axes4);
%fun=inline(sa);
t=[-10:0.01:10];
switch eleccion1
    case 1
        plot(t,fun1+fun,'c', 'linewidth',3)
        rfun=fun1+fun;
    case 2
        plot(t,fun1-fun,'c', 'linewidth',3)
        rfun=fun1-fun;
    case 3
        plot(t,fun1.*fun,'c', 'linewidth',3)
        rfun=fun1.*fun;
    case 4
        plot(t,fun1./fun,'c', 'linewidth',3)
        rfun=fun1./fun;
end
grid on
tle=(rfun+rfun(end:-1:1))/2;
tlo=(rfun-rfun(end:-1:1))/2;
f=char(tle);
axes(handles.axes5);
%subplot(2,1,1);
plot(t,tle,'r')
grid on
title('La parte par es:')
axes(handles.axes6);
%subplot(2,1,1);
plot(t,tlo,'r')
title('La parte impar es:')
grid on
%set(handles.edit10,'string',f);


grid on

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
