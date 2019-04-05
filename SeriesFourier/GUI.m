function varargout = GUI(varargin)
format short
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 12-Oct-2015 22:57:41

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
format shortG
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
format short
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function funcion_Callback(hObject, eventdata, handles)
format shortG
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of funcion as text
%        str2double(get(hObject,'String')) returns contents of funcion as a double


% --- Executes during object creation, after setting all properties.
function funcion_CreateFcn(hObject, eventdata, handles)
format shortG
% hObject    handle to funcion (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inter1_Callback(hObject, eventdata, handles)
format shortG
% hObject    handle to inter1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inter1 as text
%        str2double(get(hObject,'String')) returns contents of inter1 as a double


% --- Executes during object creation, after setting all properties.
function inter1_CreateFcn(hObject, eventdata, handles)
format shortG
% hObject    handle to inter1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inter2_Callback(hObject, eventdata, handles)
format shortG
% hObject    handle to inter2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inter2 as text
%        str2double(get(hObject,'String')) returns contents of inter2 as a double


% --- Executes during object creation, after setting all properties.
function inter2_CreateFcn(hObject, eventdata, handles)
format shortG
% hObject    handle to inter2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function periodo_Callback(hObject, eventdata, handles)
format shortG
% hObject    handle to periodo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of periodo as text
%        str2double(get(hObject,'String')) returns contents of periodo as a double


% --- Executes during object creation, after setting all properties.
function periodo_CreateFcn(hObject, eventdata, handles)
format shortG
% hObject    handle to periodo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
format rat
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%sol=int2str(int(sym('x'))) 
%hold off

syms x
syms n
fun=get(handles.funcion,'string');
prueba=inline(fun)
if prueba(-1)==prueba(1)
    set(handles.Par,'string','La funcion es par')
    set(handles.Impar,'string',' ')
    set(handles.ninguno,'string',' ')
elseif prueba(-1)==-prueba(1)
    set(handles.Impar,'string','La funcion es impar')
    set(handles.Par,'string',' ')
    set(handles.ninguno,'string',' ')
else
    set(handles.ninguno,'string','La funcion no es par ni impar')
    set(handles.Par,'string',' ')
    set(handles.Impar,'string',' ')
end
lim1=get(handles.inter1,'string');
lim2=get(handles.inter2,'string');
periodo=get(handles.periodo,'string');
nh=(str2double(periodo)/2);
L=num2str(nh)
%s=(str2num(periodo)/2);      

a0=(1/(2*nh))*int(sym(fun),lim1,lim2);

an1=strcat('(',fun,')*cos((n*pi*x)/',L,')');
an=(1/nh)*int(sym(an1),lim1,lim2);

bn1=strcat('(',fun,')*sin((n*pi*x)/',L,')')
bn=(1/nh)*int(sym(bn1),lim1,lim2);


%a01=inline(a0);
%an1=inline(an,n);
%bn1=inline(bn,n)
format rat
serie=(a0)+symsum(an*cos((n*pi*x)/L)+bn*sin((n*pi*x)/L),'n',1,str2num(get(handles.cant,'string')));
format rat
sol1=char(serie);
format rat

%f=strcat(sol,'c');
%x1=[str2num(lim1):0.01:str2num(lim2)];
axes(handles.axes1);
%plot(x1,prueba(x1),'linewidth',2,'markersize',4,'markeredgecolor','r','markerfacecolor','r')
ezplot(prueba,[str2num(lim1),str2num(lim2)])
format rat
set(handles.solucion,'string',sol1);
hold on
series=inline(serie);
%set(handles.serie,'string',char(series))
x=[-10+str2num(lim1):0.01:str2num(lim2)+10];
axes(handles.axes1);
plot(x,series(x),'r','linewidth',2,'markersize',6,'markeredgecolor','g','markerfacecolor','g')
xlim([-10+str2num(lim1),10+str2num(lim2)])
%if prueba(str2num(lim1))<=0 && prueba(str2num(lim2))>=0
  % ylim([-5+prueba(str2num(lim1)),5+prueba(str2num(lim2))])
%elseif fun(str2num(lim1))<=0 && fun(str2num(lim2))<=0
%   ylim([-10+fun(str2num(lim1)),+10+fun(str2num(lim2))]) 

%end
%hold on

hold off
%hold on
%axes(handles.axes2);
%g=(a0/2)+(an*cos((1*pi*x)/L)+bn*sin((1*pi*x)/L));
%g1=inline(g);
%plot(x,g1(x))
%c=1;
%n=1;
%while n<=2
 %   f1=(a0/2)+(an*cos((c*pi*x)/L)+bn*sin((c*pi*x)/L));
  %  func=inline(f1)
   % axes(handles.axes1);
    %plot(x,func(x))
    %c=c+1;
%end
%plot(x,(a0/2)+symsum(an*cos((n*pi*x)/L)+bn*sin((n*pi*x)/L),'n',1,1))
%plot(x,(a0/2)+symsum(an*cos((n*pi*x)/L)+bn*sin((n*pi*x)/L),'n',2,2))
%plot(x,(a0/2)+symsum(an*cos((n*pi*x)/L)+bn*sin((n*pi*x)/L),'n',3,3))
grid on



% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
format shortG
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
format shortG
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms x
syms n
fun=get(handles.funcion,'string');
lim1=get(handles.inter1,'string');
lim2=get(handles.inter2,'string');
periodo=get(handles.periodo,'string');
nh=(str2double(periodo)/2);
L=num2str(nh)
%s=(str2num(periodo)/2);
num=1;
ncol=1;
while num<=str2num(get(handles.cant,'string'))
a0=(1/(2*nh))*int(sym(fun),lim1,lim2);

an1=strcat('(',fun,')*cos((n*pi*x)/',L,')');
an=(1/nh)*int(sym(an1),lim1,lim2);

bn1=strcat('(',fun,')*sin((n*pi*x)/',L,')');
bn=(1/nh)*int(sym(bn1),lim1,lim2);


%a01=inline(a0);
%an1=inline(an,n);
%bn1=inline(bn,n)
%n=1;
        syms x
     serie1=(a0/2)+symsum(an*cos((1*pi*x)/L)+bn*sin((2*pi*x)/L),'n',num,num);
    %sol1=char(serie);
   
    %series=inline(serie1);
%x=-10:0.01:10;

%ezplot(serie1)
%setcurve('color','red')
cer=inline(serie1)
x=[-5:0.01:5];
axes(handles.axes2);
color='r';
if ncol>=8
    ncol=1;
end
if ncol==1
    color='b';
elseif ncol==2
    color='g';
    elseif ncol==3
        color='r';
        elseif ncol==4
            color='c';
            elseif ncol==5
                color='m';
                elseif ncol==6
                    color='y';
                    elseif ncol==7
                        color='k';
end
plot(x,cer(x),color)
grid on
hold on
num=num+1;
ncol=ncol+1;

end
hold off


%f=strcat(sol,'c');
%set(handles.solucion,'string',sol1);

%set(handles.serie,'string',char(series))



function cant_Callback(hObject, eventdata, handles)
format shortG
% hObject    handle to cant (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cant as text
%        str2double(get(hObject,'String')) returns contents of cant as a double


% --- Executes during object creation, after setting all properties.
function cant_CreateFcn(hObject, eventdata, handles)
format shortG
% hObject    handle to cant (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on mouse press over figure background.
function figure1_ButtonDownFcn(hObject, eventdata, handles)
format shortG
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
