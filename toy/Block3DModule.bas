Attribute VB_Name = "Block3DModule"
Option Explicit

Public Const MaxBlockCount = 1599
Public Const MaxBlockWidth = 40

Public Const BasePositionX = 400
Public Const BasePositionY = 300
Public Const DeepSizeBlock = 6
Public Const BlockSizeWidth = 24
Public Const BlockSizeHeight = 12

Public Type Position
    X As Integer
    Y As Integer
End Type

Public Type Block3D
    BorderColor As Long
    Vertex(3) As Integer
    Level As Integer
    Pos As Position
End Type

Public VertexPosition(3) As Position
Public MoveCount As Position

Public Function InitPublicValue(ResetX As Integer, ResetY As Integer, Block As Block3D)
    Dim i As Integer
    
    VertexPosition(0).X = ResetX
    VertexPosition(0).Y = -BlockSizeHeight + ResetY
    VertexPosition(1).X = BlockSizeWidth + ResetX
    VertexPosition(1).Y = ResetY
    VertexPosition(2).X = ResetX
    VertexPosition(2).Y = BlockSizeHeight + ResetY
    VertexPosition(3).X = -BlockSizeWidth + ResetX
    VertexPosition(3).Y = ResetY
    
    For i = 0 To 3
        VertexPosition(i).X = VertexPosition(i).X + ((Block.Pos.X - MoveCount.X) * BlockSizeWidth + (Block.Pos.Y - MoveCount.Y) * BlockSizeHeight * 2)
        VertexPosition(i).Y = VertexPosition(i).Y + (-(Block.Pos.X - MoveCount.X) * BlockSizeWidth / 2 + (Block.Pos.Y - MoveCount.Y) * BlockSizeHeight)
        VertexPosition(i).Y = VertexPosition(i).Y + (Block.Vertex(i) - Block.Level) * DeepSizeBlock
    Next i
    
End Function

Public Function DrawBlock3D(Board As PictureBox, Block As Block3D, Baseface As Boolean)
    InitPublicValue BasePositionX, BasePositionY, Block
    Board.Line (VertexPosition(0).X, VertexPosition(0).Y)- _
                (VertexPosition(1).X, VertexPosition(1).Y), Block.BorderColor
    Board.Line -(VertexPosition(2).X, VertexPosition(2).Y), Block.BorderColor
    Board.Line -(VertexPosition(3).X, VertexPosition(3).Y), Block.BorderColor
    Board.Line -(VertexPosition(0).X, VertexPosition(0).Y), Block.BorderColor
    
    If (Baseface) Then
        Board.Line (VertexPosition(0).X, VertexPosition(0).Y - Block.Vertex(0) * DeepSizeBlock)- _
                   (VertexPosition(1).X, VertexPosition(1).Y - Block.Vertex(1) * DeepSizeBlock), Block.BorderColor
        Board.Line -(VertexPosition(2).X, VertexPosition(2).Y - Block.Vertex(2) * DeepSizeBlock), Block.BorderColor
        Board.Line -(VertexPosition(3).X, VertexPosition(3).Y - Block.Vertex(3) * DeepSizeBlock), Block.BorderColor
        Board.Line -(VertexPosition(0).X, VertexPosition(0).Y - Block.Vertex(0) * DeepSizeBlock), Block.BorderColor
        
        Board.Line (VertexPosition(0).X, VertexPosition(0).Y)- _
                   (VertexPosition(0).X, VertexPosition(0).Y - Block.Vertex(0) * DeepSizeBlock), Block.BorderColor
        Board.Line (VertexPosition(1).X, VertexPosition(1).Y)- _
                   (VertexPosition(1).X, VertexPosition(1).Y - Block.Vertex(1) * DeepSizeBlock), Block.BorderColor
        Board.Line (VertexPosition(2).X, VertexPosition(2).Y)- _
                   (VertexPosition(2).X, VertexPosition(2).Y - Block.Vertex(2) * DeepSizeBlock), Block.BorderColor
        Board.Line (VertexPosition(3).X, VertexPosition(3).Y)- _
                   (VertexPosition(3).X, VertexPosition(3).Y - Block.Vertex(3) * DeepSizeBlock), Block.BorderColor
    End If
End Function
