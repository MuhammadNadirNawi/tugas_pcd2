function varargout = newAgil(varargin)
% NEWAGIL MATLAB code for newAgil.fig
%      NEWAGIL, by itself, creates a new NEWAGIL or raises the existing
%      singleton*.
%
%      H = NEWAGIL returns the handle to a new NEWAGIL or the handle to
%      the existing singleton*.
%
%      NEWAGIL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWAGIL.M with the given input arguments.
%
%      NEWAGIL('Property','Value',...) creates a new NEWAGIL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before newAgil_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to newAgil_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newAgil

% Last Modified by GUIDE v2.5 06-Sep-2021 21:12:31

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newAgil_OpeningFcn, ...
                   'gui_OutputFcn',  @newAgil_OutputFcn, ...
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


% --- Executes just before newAgil is made visible.
function newAgil_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to newAgil (see VARARGIN)

% Choose default command line output for newAgil
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes newAgil wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = newAgil_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in gambar1.
function gambar1_Callback(hObject, eventdata, handles)
% hObject    handle to gambar1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Gambar asli
a = imread ('gambar2.jpeg');
axes(handles.axes2)
imshow(a);
title('Citra Berwarna')


% --- Executes on button press in gambar2.
function gambar2_Callback(hObject, eventdata, handles)
% hObject    handle to gambar2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dekomposisi keabuan
a = imread ('gambar2.jpeg');
a_keabuan = 0.4 * a(:,:,1) + 0.32 * a(:,:,2) + 0.28 * a(:,:,3);
axes(handles.axes3)
imshow(a_keabuan)
title('Citra Keabuan')

% --- Executes on button press in gambar3.
function gambar3_Callback(hObject, eventdata, handles)
% hObject    handle to gambar3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Brightness
a = imread ('gambar2.jpeg');
a_keabuan = 0.4 * a(:,:,1) + 0.32 * a(:,:,2) + 0.28 * a(:,:,3);
a_biner = im2bw(a, 0.4);
axes(handles.axes4)
imshow(a_biner)
title('Citra Biner')

% --- Executes on button press in gambar4.
function gambar4_Callback(hObject, eventdata, handles)
% hObject    handle to gambar4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a = imread ('gambar2.jpeg');
a_keabuan = 0.4 * a(:,:,1) + 0.32 * a(:,:,2) + 0.28 * a(:,:,3);
kecerahan = 85;
a_brightness = a_keabuan + kecerahan;
axes(handles.axes9)
imshow(a_brightness)
title('Citra Brightness')

% --- Executes on button press in gambar5.
function gambar5_Callback(hObject, eventdata, handles)
% hObject    handle to gambar5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Kontras
a = imread ('gambar2.jpeg');
a_keabuan = 0.4 * a(:,:,1) + 0.32 * a(:,:,2) + 0.28 * a(:,:,3);
kontras = 1.5;
a_kontras = a_keabuan * kontras;
axes(handles.axes10)
imshow(a_kontras)
title('Citra Kontras')

% --- Executes on button press in gambar6.
function gambar6_Callback(hObject, eventdata, handles)
% hObject    handle to gambar6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
