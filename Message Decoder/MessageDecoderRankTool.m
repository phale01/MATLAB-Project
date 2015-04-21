function varargout = MessageDecoderRank(varargin)
% MESSAGEDECODERRANK MATLAB code for MessageDecoderRank.fig
%      MESSAGEDECODERRANK, by itself, creates a new MESSAGEDECODERRANK or raises the existing
%      singleton*.
%
%      H = MESSAGEDECODERRANK returns the handle to a new MESSAGEDECODERRANK or the handle to
%      the existing singleton*.
%
%      MESSAGEDECODERRANK('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MESSAGEDECODERRANK.M with the given input arguments.
%
%      MESSAGEDECODERRANK('Property','Value',...) creates a new MESSAGEDECODERRANK or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MessageDecoderRank_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MessageDecoderRank_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help MessageDecoderRank

% Last Modified by GUIDE v2.5 20-Apr-2015 20:12:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MessageDecoderRank_OpeningFcn, ...
                   'gui_OutputFcn',  @MessageDecoderRank_OutputFcn, ...
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


% --- Executes just before MessageDecoderRank is made visible.
function MessageDecoderRank_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MessageDecoderRank (see VARARGIN)

% Choose default command line output for MessageDecoderRank
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MessageDecoderRank wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = MessageDecoderRank_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in DecodeButton.
function DecodeButton_Callback(hObject, eventdata, handles)
% hObject    handle to DecodeButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
MessageDecoderRankFunc(handles);

function BrowseText_Callback(hObject, eventdata, handles)
% hObject    handle to BrowseText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of BrowseText as text
%        str2double(get(hObject,'String')) returns contents of BrowseText as a double


% --- Executes during object creation, after setting all properties.
function BrowseText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to BrowseText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MessageText_Callback(hObject, eventdata, handles)
% hObject    handle to MessageText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MessageText as text
%        str2double(get(hObject,'String')) returns contents of MessageText as a double


% --- Executes during object creation, after setting all properties.
function MessageText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MessageText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MessageEdit_Callback(hObject, eventdata, handles)
% hObject    handle to MessageEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MessageEdit as text
%        str2double(get(hObject,'String')) returns contents of MessageEdit as a double


% --- Executes during object creation, after setting all properties.
function MessageEdit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MessageEdit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditA_Callback(hObject, eventdata, handles)
% hObject    handle to EditA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditA as text
%        str2double(get(hObject,'String')) returns contents of EditA as a double


% --- Executes during object creation, after setting all properties.
function EditA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditB_Callback(hObject, eventdata, handles)
% hObject    handle to EditB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditB as text
%        str2double(get(hObject,'String')) returns contents of EditB as a double


% --- Executes during object creation, after setting all properties.
function EditB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditC_Callback(hObject, eventdata, handles)
% hObject    handle to EditC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditC as text
%        str2double(get(hObject,'String')) returns contents of EditC as a double


% --- Executes during object creation, after setting all properties.
function EditC_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditC (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditH_Callback(hObject, eventdata, handles)
% hObject    handle to EditH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditH as text
%        str2double(get(hObject,'String')) returns contents of EditH as a double


% --- Executes during object creation, after setting all properties.
function EditH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditG_Callback(hObject, eventdata, handles)
% hObject    handle to EditG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditG as text
%        str2double(get(hObject,'String')) returns contents of EditG as a double


% --- Executes during object creation, after setting all properties.
function EditG_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditF_Callback(hObject, eventdata, handles)
% hObject    handle to EditF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditF as text
%        str2double(get(hObject,'String')) returns contents of EditF as a double


% --- Executes during object creation, after setting all properties.
function EditF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditE_Callback(hObject, eventdata, handles)
% hObject    handle to EditE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditE as text
%        str2double(get(hObject,'String')) returns contents of EditE as a double


% --- Executes during object creation, after setting all properties.
function EditE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditD_Callback(hObject, eventdata, handles)
% hObject    handle to EditD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditD as text
%        str2double(get(hObject,'String')) returns contents of EditD as a double


% --- Executes during object creation, after setting all properties.
function EditD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditQ_Callback(hObject, eventdata, handles)
% hObject    handle to EditQ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditQ as text
%        str2double(get(hObject,'String')) returns contents of EditQ as a double


% --- Executes during object creation, after setting all properties.
function EditQ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditQ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditP_Callback(hObject, eventdata, handles)
% hObject    handle to EditP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditP as text
%        str2double(get(hObject,'String')) returns contents of EditP as a double


% --- Executes during object creation, after setting all properties.
function EditP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditO_Callback(hObject, eventdata, handles)
% hObject    handle to EditO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditO as text
%        str2double(get(hObject,'String')) returns contents of EditO as a double


% --- Executes during object creation, after setting all properties.
function EditO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditN_Callback(hObject, eventdata, handles)
% hObject    handle to EditN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditN as text
%        str2double(get(hObject,'String')) returns contents of EditN as a double


% --- Executes during object creation, after setting all properties.
function EditN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditM_Callback(hObject, eventdata, handles)
% hObject    handle to EditM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditM as text
%        str2double(get(hObject,'String')) returns contents of EditM as a double


% --- Executes during object creation, after setting all properties.
function EditM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditL_Callback(hObject, eventdata, handles)
% hObject    handle to EditL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditL as text
%        str2double(get(hObject,'String')) returns contents of EditL as a double


% --- Executes during object creation, after setting all properties.
function EditL_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditL (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditK_Callback(hObject, eventdata, handles)
% hObject    handle to EditK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditK as text
%        str2double(get(hObject,'String')) returns contents of EditK as a double


% --- Executes during object creation, after setting all properties.
function EditK_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditJ_Callback(hObject, eventdata, handles)
% hObject    handle to EditJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditJ as text
%        str2double(get(hObject,'String')) returns contents of EditJ as a double


% --- Executes during object creation, after setting all properties.
function EditJ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditI_Callback(hObject, eventdata, handles)
% hObject    handle to EditI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditI as text
%        str2double(get(hObject,'String')) returns contents of EditI as a double


% --- Executes during object creation, after setting all properties.
function EditI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditV_Callback(hObject, eventdata, handles)
% hObject    handle to EditV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditV as text
%        str2double(get(hObject,'String')) returns contents of EditV as a double


% --- Executes during object creation, after setting all properties.
function EditV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditU_Callback(hObject, eventdata, handles)
% hObject    handle to EditU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditU as text
%        str2double(get(hObject,'String')) returns contents of EditU as a double


% --- Executes during object creation, after setting all properties.
function EditU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditT_Callback(hObject, eventdata, handles)
% hObject    handle to EditT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditT as text
%        str2double(get(hObject,'String')) returns contents of EditT as a double


% --- Executes during object creation, after setting all properties.
function EditT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditS_Callback(hObject, eventdata, handles)
% hObject    handle to EditS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditS as text
%        str2double(get(hObject,'String')) returns contents of EditS as a double


% --- Executes during object creation, after setting all properties.
function EditS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditR_Callback(hObject, eventdata, handles)
% hObject    handle to EditR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditR as text
%        str2double(get(hObject,'String')) returns contents of EditR as a double


% --- Executes during object creation, after setting all properties.
function EditR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditY_Callback(hObject, eventdata, handles)
% hObject    handle to EditY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditY as text
%        str2double(get(hObject,'String')) returns contents of EditY as a double


% --- Executes during object creation, after setting all properties.
function EditY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditX_Callback(hObject, eventdata, handles)
% hObject    handle to EditX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditX as text
%        str2double(get(hObject,'String')) returns contents of EditX as a double


% --- Executes during object creation, after setting all properties.
function EditX_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditX (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditW_Callback(hObject, eventdata, handles)
% hObject    handle to EditW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditW as text
%        str2double(get(hObject,'String')) returns contents of EditW as a double


% --- Executes during object creation, after setting all properties.
function EditW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function EditZ_Callback(hObject, eventdata, handles)
% hObject    handle to EditZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of EditZ as text
%        str2double(get(hObject,'String')) returns contents of EditZ as a double


% --- Executes during object creation, after setting all properties.
function EditZ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to EditZ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
