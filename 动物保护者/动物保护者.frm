VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "动物保护者"
   ClientHeight    =   10140
   ClientLeft      =   1050
   ClientTop       =   1695
   ClientWidth     =   14160
   FillColor       =   &H000000FF&
   Icon            =   "动物保护者.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   Picture         =   "动物保护者.frx":25CA
   ScaleHeight     =   10140
   ScaleMode       =   0  'User
   ScaleWidth      =   14160
   WindowState     =   1  'Minimized
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   12360
      Top             =   120
   End
   Begin VB.Label Label17 
      BackColor       =   &H000080FF&
      BackStyle       =   0  'Transparent
      Caption         =   "技能"
      BeginProperty Font 
         Name            =   "方正舒体"
         Size            =   26.25
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   735
      Left            =   960
      TabIndex        =   16
      Top             =   6480
      Width           =   1335
   End
   Begin VB.Label Label16 
      BackColor       =   &H000080FF&
      BackStyle       =   0  'Transparent
      Caption         =   "升级"
      BeginProperty Font 
         Name            =   "方正舒体"
         Size            =   36
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   975
      Left            =   240
      TabIndex        =   15
      Top             =   960
      Width           =   1935
   End
   Begin VB.Image Image8 
      Height          =   960
      Left            =   11040
      Picture         =   "动物保护者.frx":1F4D6
      Top             =   7200
      Width           =   960
   End
   Begin VB.Image Image7 
      Height          =   720
      Left            =   6600
      Picture         =   "动物保护者.frx":23720
      Top             =   5040
      Width           =   720
   End
   Begin VB.Image Image6 
      Height          =   720
      Left            =   6840
      Picture         =   "动物保护者.frx":25CEA
      Top             =   4200
      Width           =   720
   End
   Begin VB.Image Image5 
      Height          =   720
      Left            =   6960
      Picture         =   "动物保护者.frx":282B4
      Top             =   3360
      Width           =   720
   End
   Begin VB.Image Image4 
      Height          =   720
      Left            =   7320
      Picture         =   "动物保护者.frx":2A87E
      Top             =   2520
      Width           =   720
   End
   Begin VB.Label Label15 
      BackColor       =   &H000080FF&
      BackStyle       =   0  'Transparent
      Caption         =   "quit"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   36
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   735
      Left            =   4680
      TabIndex        =   14
      Top             =   5040
      Width           =   2055
   End
   Begin VB.Label Label14 
      BackColor       =   &H000080FF&
      BackStyle       =   0  'Transparent
      Caption         =   "About"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   36
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   735
      Left            =   4680
      TabIndex        =   13
      Top             =   4320
      Width           =   2055
   End
   Begin VB.Label Label13 
      BackColor       =   &H000080FF&
      BackStyle       =   0  'Transparent
      Caption         =   "Help"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   36
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   855
      Left            =   4800
      TabIndex        =   12
      Top             =   3480
      Width           =   2055
   End
   Begin VB.Label Label12 
      BackColor       =   &H000080FF&
      BackStyle       =   0  'Transparent
      Caption         =   "Strat"
      BeginProperty Font 
         Name            =   "宋体"
         Size            =   36
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   735
      Left            =   4920
      TabIndex        =   11
      Top             =   2640
      Width           =   2055
   End
   Begin VB.Label Label11 
      BackColor       =   &H000080FF&
      BackStyle       =   0  'Transparent
      Caption         =   "Save Animal"
      BeginProperty Font 
         Name            =   "方正舒体"
         Size            =   99.75
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   2175
      Left            =   1320
      TabIndex        =   10
      Top             =   0
      Width           =   11295
   End
   Begin VB.Label Label10 
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H000000FF&
      Height          =   375
      Left            =   10320
      TabIndex        =   9
      Top             =   6720
      Width           =   975
   End
   Begin VB.Label Label9 
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H000000FF&
      Height          =   615
      Left            =   11400
      TabIndex        =   8
      Top             =   720
      Width           =   855
   End
   Begin VB.Image Image3 
      Height          =   960
      Left            =   1320
      Picture         =   "动物保护者.frx":2CE48
      Top             =   7200
      Width           =   960
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Height          =   255
      Left            =   1200
      TabIndex        =   7
      Top             =   6840
      Width           =   735
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "得分"
      ForeColor       =   &H000080FF&
      Height          =   495
      Left            =   9960
      TabIndex        =   6
      Top             =   1320
      Width           =   975
   End
   Begin VB.Shape Shape6 
      BackColor       =   &H0000C000&
      BorderColor     =   &H0000C000&
      BorderWidth     =   3
      FillColor       =   &H0000FFFF&
      Height          =   615
      Left            =   2.45745e5
      Top             =   4680
      Width           =   855
   End
   Begin VB.Shape Shape5 
      BackColor       =   &H000000FF&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      FillColor       =   &H000000FF&
      Height          =   735
      Left            =   2.45745e5
      Top             =   4920
      Width           =   735
   End
   Begin VB.Shape Shape4 
      BackColor       =   &H0000C000&
      BorderColor     =   &H0000C000&
      BorderWidth     =   3
      FillColor       =   &H0000FFFF&
      Height          =   735
      Left            =   1.29600e5
      Top             =   3720
      Width           =   735
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H000000FF&
      BorderColor     =   &H000000FF&
      BorderWidth     =   3
      Height          =   615
      Left            =   2.45745e5
      Top             =   2640
      Width           =   615
   End
   Begin VB.Label Label8 
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "120"
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   9600
      TabIndex        =   5
      Top             =   7560
      Width           =   975
   End
   Begin VB.Image Image2 
      Height          =   720
      Left            =   13080
      Picture         =   "动物保护者.frx":31092
      Top             =   120
      Width           =   720
   End
   Begin VB.Label Label7 
      BackColor       =   &H000080FF&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Caption         =   "继续"
      ForeColor       =   &H000080FF&
      Height          =   495
      Left            =   9960
      TabIndex        =   4
      Top             =   4080
      Width           =   975
   End
   Begin VB.Label Label4 
      BackColor       =   &H000080FF&
      BackStyle       =   0  'Transparent
      BorderStyle     =   1  'Fixed Single
      Caption         =   "暂停"
      ForeColor       =   &H000080FF&
      Height          =   495
      Left            =   9960
      TabIndex        =   3
      Top             =   3360
      Width           =   975
   End
   Begin VB.Label Label6 
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "1"
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   11160
      TabIndex        =   2
      Top             =   2160
      Width           =   1095
   End
   Begin VB.Label Label5 
      BackColor       =   &H000000FF&
      BackStyle       =   0  'Transparent
      Caption         =   "等级"
      ForeColor       =   &H000080FF&
      Height          =   495
      Left            =   9960
      TabIndex        =   1
      Top             =   2160
      Width           =   975
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "0"
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   11160
      TabIndex        =   0
      Top             =   1320
      Width           =   1215
   End
   Begin VB.Shape Shape2 
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2880
      Top             =   7680
      Width           =   6495
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H000000FF&
      FillColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   2880
      Top             =   7680
      Width           =   6495
   End
   Begin VB.Image Image1 
      Height          =   495
      Index           =   0
      Left            =   1320
      Top             =   1200
      Width           =   495
   End
   Begin VB.Menu X 
      Caption         =   "About(A)"
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim firstclick As Integer
Dim lastclick As Integer
Dim clicks As Integer
Dim counts As Integer
Dim Stoped As Boolean
Dim noclick As Integer



Private Sub Form_Load()
    Call playsound1
    Stoped = False
    Call inits
End Sub

Private Sub inits() '初始化
    noclick = 7
    
'点击游戏开始时显示
    Call installpic '载入图片
    Label2.FontSize = 20
    Label1.FontSize = 20
    Label3.FontSize = 20
    Label5.FontSize = 20
    Label6.FontSize = 20
    Label4.FontSize = 20
    Label7.FontSize = 20
    Label8.FontSize = 20
    Label9.FontSize = 20
    Label9.Visible = False
    Label10.FontSize = 20
    Label10.Visible = False
    
    Label1.Visible = False
    Label2.Visible = False
    Label3.Visible = False
    Label4.Visible = False
    Label5.Visible = False
    Label6.Visible = False
    Label7.Visible = False
    Label8.Visible = False
    
    Shape1.Visible = False
    Shape2.Visible = False
    clicks = 1
    counts = 0
    Image3.Visible = False
    
    '未点击游戏开始时显示
    Label11.Visible = True
    Label12.Visible = True
    Label13.Visible = True
    Label14.Visible = True
    Label15.Visible = True
    
    Image4.Visible = False
    Image5.Visible = False
    Image6.Visible = False
    Image7.Visible = False
    Label16.Visible = False
    Label17.Visible = False
    
    
End Sub


Private Sub Image1_Click(Index As Integer)
    Call playsound2
    Label17.Visible = False
    noclick = 7
   If Stoped = False Then
      If clicks = 1 Then '666666666666666666666666666666666666666
            firstclick = Index
            Call focus1(firstclick)
            clicks = 2
            counts = counts + 1
       Else
            lastclick = Index
            Call focus2(lastclick)
            clicks = 1
            counts = counts + 1
       End If
       
      If counts = 2 Then
            Call gamefunction(firstclick, lastclick)
            counts = 0
     End If
End If
End Sub
Private Sub showui2()
    Label1.Visible = True  '分数
    Label2.Visible = True
    Label3.Visible = True
    Label4.Visible = True
    Label5.Visible = True
    Label6.Visible = True  '等级
    Label7.Visible = True
    Label8.Visible = True  '剩余时间
    Shape1.Visible = True '时间进度条
    Shape2.Visible = True
    
    Image3.Visible = True
    Timer1.Enabled = True
End Sub
Private Sub clickstart()
    Label11.Visible = True ' 游戏标题
    Label12.Visible = True 'start
    Label13.Visible = False 'help
    Label14.Visible = False ' about
    Label15.Visible = False 'quit
    Image4.Visible = True
    Call Sleep(1000)
    Image4.Visible = False
    Label12.Visible = False
    Label11.Visible = False
   
End Sub
Private Sub gamestart()
    Call showui2
    Call initmove
    
End Sub


Private Sub Image3_Click() '更新按钮
    If Int(Val(Label8.Caption)) > 20 Then
        Call refreshsub
        Call refresh66
        Call automaticfunction
    End If
    
End Sub
Private Sub refreshsub()
     If Int(Val(Label8.Caption)) > 20 Then
        Label8.Caption = Str(Int(Val(Label8.Caption)) - 20)
        Shape1.Width = Shape1.Width - 20 * 54
        Form1.Label10.Caption = "-" + Str(20)
        Form1.Label10.Visible = True
        Sleep (1000)
        Form1.Label10.Visible = False
    End If
    
        
End Sub

Private Sub Image8_Click() '返回

    Call inits
    Call unloads
    Call Form_Load
    Call inittime
    
    
    
End Sub

Private Sub Label12_Click() '点击游戏开始
    Call clickstart
    Call initlevel(1, 8, 8)
    Call loads
    Call gamestart
    
End Sub


Public Sub levelin() '等级上升
    Label16.Visible = True
    Sleep (1000)
    Call unloads
    Call refreshtimesc
    Call initlevel(1, 8, 8)
    Call loads
    Call gamestart
    Sleep (500)
    Label16.Visible = False
    
End Sub
Private Sub refreshtimesc()
    Shape1.Width = 6495
    Label1.Caption = "0"
    Label8.Caption = "120"
End Sub


Private Sub refresh66() '更新
    Call unloads
    Call loads
    Call gamestart
End Sub

Private Sub Label13_Click() '点击help
    Label17.Visible = False
    Label11.Visible = True ' 游戏标题
    Label12.Visible = False 'start
    Label13.Visible = True 'help
    Label14.Visible = False ' about
    Label15.Visible = False 'quit
    Image5.Visible = True
    Call Sleep(1000)
    Image5.Visible = False
    Label13.Visible = False
    Label11.Visible = False
    
End Sub

Private Sub Label14_Click() '点击about
    Label17.Visible = False
    Label11.Visible = True ' 游戏标题
    Label12.Visible = False 'start
    Label13.Visible = False 'help
    Label14.Visible = True ' about
    Label15.Visible = False 'quit
    Image6.Visible = True
    Call Sleep(1000)
    Image6.Visible = False
    Label14.Visible = False
    Label11.Visible = False
End Sub

Private Sub Label15_Click()
    Label11.Visible = True ' 游戏标题
    Label12.Visible = False 'start
    Label13.Visible = False 'help
    Label14.Visible = False ' about
    Label15.Visible = True 'quit
    Image7.Visible = True
    Call Sleep(1000)
    Image7.Visible = False
    Label15.Visible = False
    Label11.Visible = False
    Call stopsound
    
    
    
    Unload Me
End Sub

Private Sub Label4_Click()
    Stoped = True
    Timer1.Enabled = False
    
End Sub

Private Sub Label7_Click()
    Timer1.Enabled = True
    Stoped = False
    
End Sub



Private Sub Timer1_Timer()
    
    maxwidth = 6500
    If Shape1.Width <= 15 Or Int(Val(Label8.Caption)) = 0 Then
        Shape1.Width = 0
        Timer1.Enabled = False
         MsgBox "game over", bOKOnly, "动物保护者"
        Call Image8_Click
         
    Else
        If Shape1.Width > maxwidth Then
            Shape1.Width = maxwidth
            Label6.Caption = Label6.Caption + 1
            
            'cccccccccccccccccccccc
        End If
        
        If Shape1.Width - 54 >= 0 Then
        
            Shape1.Width = Shape1.Width - 54
        End If
        
        Label8.Caption = Str(Int(Val(Label8.Caption) - 1))
    End If
    If noclick = 0 Then
        noclick = 3
        Label17.Visible = True
    ElseIf noclick = 2 Then
        Label17.Visible = False
    End If
    noclick = noclick - 1
    
End Sub


Private Sub initmove()
    Shape3.Width = 720
    Shape3.Height = 720
    Shape3.Visible = False
    Shape5.Width = 720
    Shape5.Height = 720
    Shape5.Visible = False
    
    
    Shape4.Width = 720 * 2
    Shape4.Height = 720
    Shape4.Visible = False
    
    Shape6.Width = 720
    Shape6.Height = 720 * 2
    Shape6.Visible = False
    
    
End Sub
