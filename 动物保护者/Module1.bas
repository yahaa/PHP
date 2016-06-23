Attribute VB_Name = "Module1"
Public Declare Function timeGetTime Lib "winmm.dll" () As Long
Dim widths As Integer
Dim heights As Integer
Dim lefts As Integer
Dim tops As Integer
Dim picstr(27) As String
Dim xmax As Integer
Dim ymax As Integer
Dim visit(20, 20) As Boolean
Dim picpath(20, 20) As String
Dim loadflag As Boolean
Dim lev As Integer

Public Sub initlevel(le As Integer, X As Integer, y As Integer)
    lev = lev + le
    xmax = X
    ymax = y
    
End Sub

Public Sub installpic()
    lev = 3
    For i = 0 To 27
        picstr(i) = Replace(App.Path + "\pic\" + Str(i) + ".ico", " ", "")
    Next i
    
End Sub

Public Sub unloads()
    For i = 1 To xmax * ymax
     Form1.Image1(i).Visible = False
     Next i
     
End Sub

Public Sub inittime()
    Form1.Label1.Caption = "0"
    Form1.Label6.Caption = "0"
    Form1.Label8.Caption = "120"
    Form1.Shape1.Width = 6495
    
End Sub
Public Sub loads()
    Dim n As Integer
    n = 0
    lefts = 3000 '
    tops = 1000
    widths = 720     '48x48�����ر���
    heights = 720
    Randomize
    If loadflag = False Then
        For j = 1 To xmax
            For i = 1 To ymax
                 n = n + 1
                 'Form1.Print loadflag
                 Load Form1.Image1(n)
                 t = Int(Rnd * lev)
                 Form1.Image1(n).Picture = LoadPicture(picstr(t))
                 Form1.Image1(n).Tag = picstr(t)
                 Form1.Image1(n).Move lefts + widths * (i - 1), tops + heights * (j - 1)
                 Form1.Image1(n).Visible = True
            Next i
        Next j
        Else
        For j = 1 To xmax
            For i = 1 To ymax
                 n = n + 1
                 
                 t = Int(Rnd * lev)
                 Form1.Image1(n).Picture = LoadPicture(picstr(t))
                 Form1.Image1(n).Tag = picstr(t)
                 Form1.Image1(n).Move lefts + widths * (i - 1), tops + heights * (j - 1)
                 Form1.Image1(n).Visible = True
            Next i
        Next j
    End If
    loadflag = True
     Form1.Image2.Picture = Form1.Image1(1).Picture
     Form1.Image2.Visible = True
     
End Sub
Public Sub focus1(fir As Integer) '��һ�ε��ʱ�۽�
   yy1 = fir Mod ymax
   If yy1 = 0 Then
    yy1 = ymax
   End If
   xx1 = (fir - yy1) \ ymax + 1
   
    Form1.Shape3.Move lefts + widths * (yy1 - 1), tops + heights * (xx1 - 1)
    Form1.Shape3.Visible = True
    Form1.Shape5.Visible = False
    
End Sub

Public Sub focus2(fir As Integer) '�ڶ��ε��ʱ�۽�
    yy1 = fir Mod ymax
    If yy1 = 0 Then
    yy1 = ymax
    End If
    xx1 = (fir - yy1) \ ymax + 1
   
  
    Form1.Shape5.Move lefts + widths * (yy1 - 1), tops + heights * (xx1 - 1)
    Form1.Shape5.Visible = True
    Form1.Shape3.Visible = False
    
End Sub

Public Sub focus3(fir As Integer, sec As Integer) '���ε����۽�
    Form1.Shape3.Visible = False
    Form1.Shape5.Visible = False
    If fir + 1 = sec Then
        yy1 = fir Mod ymax
        If yy1 = 0 Then
            yy1 = ymax
        End If
        xx1 = (fir - yy1) \ ymax + 1
        Form1.Shape4.Move lefts + widths * (yy1 - 1), tops + heights * (xx1 - 1)
        Form1.Shape4.Visible = True
    ElseIf fir - 1 = sec Then
        
        yy1 = sec Mod ymax
        If yy1 = 0 Then
            yy1 = ymax
        End If
        xx1 = (sec - yy1) \ ymax + 1
        Form1.Shape4.Move lefts + widths * (yy1 - 1), tops + heights * (xx1 - 1)
        Form1.Shape4.Visible = True
        
    ElseIf fir + ymax = sec Then
        yy1 = fir Mod ymax
        If yy1 = 0 Then
            yy1 = ymax
        End If
        xx1 = (fir - yy1) \ ymax + 1
        Form1.Shape6.Move lefts + widths * (yy1 - 1), tops + heights * (xx1 - 1)
        Form1.Shape6.Visible = True
    ElseIf fir - ymax = sec Then
        yy1 = sec Mod ymax
        If yy1 = 0 Then
            yy1 = ymax
        End If
        xx1 = (sec - yy1) \ ymax + 1
        Form1.Shape6.Move lefts + widths * (yy1 - 1), tops + heights * (xx1 - 1)
        Form1.Shape6.Visible = True
    End If
      Sleep (250)
      Form1.Shape4.Visible = False
      Form1.Shape6.Visible = False
        
End Sub

Public Sub skill()
   
End Sub

Public Sub initvisit() '��ʼ���Ƿ�������

     For i = 1 To xmax
            For j = 1 To ymax
                visit(i, j) = False
            Next j
        Next i
End Sub

Public Sub swap(fir As Integer, sec As Integer) '����
    Form1.Image2.Picture = Form1.Image1(fir).Picture
    Form1.Image2.Tag = Form1.Image1(fir).Tag
        
    Form1.Image1(fir).Picture = Form1.Image1(sec).Picture
    Form1.Image1(fir).Tag = Form1.Image1(sec).Tag
        
    Form1.Image1(sec).Picture = Form1.Image2.Picture
    Form1.Image1(sec).Tag = Form1.Image2.Tag
End Sub

Public Function adjacent(fir As Integer, sec As Integer) '�Ƿ�������
    If fir - 1 = sec Or fir + 1 = sec Or fir - ymax = sec Or fir + ymax = sec Then
        adjacent = 1
    Else
        adjacent = 0
    End If
End Function

Public Function addsco(sc As Integer) '�ӷ��Լ��������ı�66666666666666666666666
    Dim originallevel As Integer
    originallevel = Int(Val(Form1.Label6.Caption))
    
    If sc > 0 Then
        Form1.Label9.Caption = "+" + Str(sc)
        Form1.Label9.Visible = True
        Form1.Label10.Caption = "+" + Str(sc)
        Form1.Label10.Visible = True
        Sleep (500)
        Form1.Label9.Visible = False
        Form1.Label10.Visible = False
    End If
    
    
        
    Form1.Label1.Caption = Form1.Label1.Caption + sc
    If Form1.Shape1.Width + 54 * sc < 6495 Then
        Form1.Shape1.Width = Form1.Shape1.Width + 54 * sc
        Else: Form1.Shape1.Width = 6495
    End If
    
     If Int(Val(Form1.Label8.Caption)) + sc < 120 Then
        Form1.Label8.Caption = Str(Int(Val(Form1.Label8.Caption)) + sc)
    Else: Form1.Label8.Caption = "120"
    
    End If
    If Int(Val(Form1.Label1.Caption)) >= 100 Then
        Form1.Label6.Caption = Form1.Label6.Caption + 1
        Form1.Label1.Caption = Str(Int(Val(Form1.Label1.Caption)) - 100)
    End If
    
    If Not (originallevel = Int(Val(Form1.Label6.Caption))) Then
        Call Form1.levelin
    End If
End Function

Public Sub onetotwo() 'һά����ӳ�䵽��ά����
    Dim npic As Integer
    npic = 1
    For i = 1 To xmax
        For j = 1 To ymax
            picpath(i, j) = Form1.Image1(npic).Tag
            npic = npic + 1
        Next j
    Next i
End Sub

Public Sub gamefunction(fir As Integer, sec As Integer) '��Ϸ����
    
    If adjacent(fir, sec) = 1 Then
        
        Call swap(fir, sec)
        Call initvisit
        
        Call focus3(fir, sec)
        Call clickdelete(fir, sec)  '���ú����ж��Ƿ����ɾ��
        Call addsco(deletecount) '���ú������Ƿ���Ҫ�ӷ��Լ�����������
        
    End If
    Call automaticfunction
    
End Sub

Public Sub automaticfunction() '�Զ�����
    Form1.Timer1.Enabled = False
    Do While Not (noclickdelete = 0)
        Call addsco(deletecount)
    Loop
    Form1.Timer1.Enabled = True
    
End Sub

Public Function noclickdelete() '�Զ�ɾȥ   ,Ϊ�ӷֺ������ó�ʼ��
   
    Call onetotwo
    tt = markall
    noclickdelete = tt
    
End Function

Public Function markall() '������У�Ϊɾ�����̵�
    Dim i As Integer
    Dim j As Integer
    
    markall = 0
    Call initvisit
    For i = 1 To xmax
        For j = 1 To ymax
        If visit(i, j) = False Then
           markall = markall + find(i, j) '�����Ƿ��п���ɾ����
           visit(i, j) = True
        End If
        Next j
    Next i
End Function

Public Function clickdelete(fir As Integer, sec As Integer) '���ʱɾȥ ��Ϊ�ӷ����ó�ʼ��
    Dim xx1 As Integer
    Dim yy1 As Integer
    Dim xx2 As Integer
    Dim yy2 As Integer

    Call onetotwo
    yy1 = fir Mod ymax
        If yy1 = 0 Then
            yy1 = ymax
        End If
    xx1 = (fir - yy1) \ ymax + 1
    
     yy2 = sec Mod ymax
        If yy2 = 0 Then
            yy2 = ymax
        End If
    xx2 = (sec - yy2) \ ymax + 1
    
    t1 = find(xx1, yy1)
    t2 = find(xx2, yy2)
    If t1 = 0 And t2 = 0 Then
        Call swap(sec, fir)
        Call onetotwo
    End If
   Call markall
    
End Function

Public Function find(X As Integer, y As Integer) '��ͼ���Ƿ���������������������ͬ��

Dim ycount As Integer
Dim xcount As Integer
ycount = 0
xcount = 0

    For j = y + 1 To ymax
        If picpath(X, j) = picpath(X, y) Then
            ycount = ycount + 1
        Else: Exit For
        End If
    Next j
    
    
    For j = y - 1 To 1 Step -1
        If picpath(X, j) = picpath(X, y) Then
            ycount = ycount + 1
        Else: Exit For
        End If
    Next j
    
    
    For i = X + 1 To xmax
        If picpath(i, y) = picpath(X, y) Then
            xcount = xcount + 1
        Else: Exit For
        End If
    Next i
    
    For i = X - 1 To 1 Step -1
        If picpath(i, y) = picpath(X, y) Then
            xcount = xcount + 1
        Else: Exit For
        End If
    Next i
    
    
    If ycount >= 2 Then
    
        For j = y + 1 To ymax
            If picpath(X, j) = picpath(X, y) Then
                Form1.Image1((X - 1) * ymax + j).Tag = "delet"
                visit(X, j) = True
            Else: Exit For
            End If
        Next j
        
        For j = y - 1 To 1 Step -1
            If picpath(X, j) = picpath(X, y) Then
                Form1.Image1((X - 1) * ymax + j).Tag = "delet"
                visit(X, j) = True
            Else: Exit For
            End If
        Next j
    End If
    
    If xcount >= 2 Then
        For i = X + 1 To xmax
            If picpath(i, y) = picpath(X, y) Then
                Form1.Image1((i - 1) * ymax + y).Tag = "delet"
                visit(i, y) = True
            Else: Exit For
            End If
        Next i
        
        For i = X - 1 To 1 Step -1
            If picpath(i, y) = picpath(X, y) Then
                Form1.Image1((i - 1) * ymax + y).Tag = "delet"
                visit(i, y) = True
                Else: Exit For
                End If
        Next i
    End If
    
     If xcount >= 2 Or ycount >= 2 Then
            Form1.Image1((X - 1) * ymax + y).Tag = "delet"
            find = 1
     Else: find = 0
    
    End If
        
End Function


Public Function deletecount() '����ɾ�˶�����ͼƬ
    
    

    deletecount = 0
    ReDim temp(xmax * ymax) As Integer
  
      For i = 1 To xmax * ymax
        If Form1.Image1(i).Tag = "delet" Then
                Form1.Image1(i).Picture = LoadPicture(picstr(26))
                Form1.Image1(i).Visible = True
                deletecount = deletecount + 1
       End If
    Next i
    If deletecount = 3 Then
        Call playsound3
    ElseIf deletecount > 3 And deletecount <= 6 Then
        Call playsound4
    ElseIf deletecount > 6 And deletecount <= 15 Then
        Call playsound7
    ElseIf deletecount > 15 Then
       Call playsound5
    ElseIf deletecount < 3 Then
        Call playsound2
    End If
    Sleep (250)
    
    Call down
    Dim n As Integer
    n = 0
    For i = 1 To xmax * ymax
        If Form1.Image1(i).Tag = "delet" Then
                Form1.Image1(i).Picture = LoadPicture(picstr(27))
                Form1.Image1(i).Visible = True
                n = n + 1
                temp(n) = i
       End If
    Next i
    Sleep (250)
    For i = 1 To n
        Form1.Image1(temp(i)).Visible = False
        Sleep (100)
        Form1.Image1(temp(i)).Visible = True 'Խ�磿������
        t = Int(Rnd * lev)
        Form1.Image1(temp(i)).Picture = LoadPicture(picstr(t))
        Form1.Image1(temp(i)).Tag = picstr(t)
        Form1.Image1(temp(i)).Visible = True
    Next i
   ' Call playsound1
    
End Function

Public Sub down() 'ģ�������½�
    Dim i As Integer
    Dim j As Integer
    Dim k As Integer

    For j = 1 To ymax
        For i = xmax To 1 Step -1
            If Form1.Image1(xy_index(i, j)).Tag = "delet" Then
                For k = i - 1 To 1 Step -1
                    If Not (Form1.Image1(xy_index(k, j)).Tag = "delet") Then
                        Exit For
                    End If
                Next k
                If k >= 1 Then
                    Call swap(xy_index(i, j), xy_index(k, j))
                Else: Exit For
                End If
            End If
            
            Next i
    Next j
      
End Sub
Public Function xy_index(X As Integer, y As Integer) 'x,y����ת��Ϊһά�����Ӧ���±�
    xy_index = (X - 1) * ymax + y
End Function

Public Function Sleep(t As Long) '����
    Dim Savetime As Long
    Savetime = timeGetTime '���¿�ʼʱ��ʱ��
    While timeGetTime < Savetime + t 'ѭ���ȴ�
        DoEvents 'ת�ÿ���Ȩ
    Wend
End Function




