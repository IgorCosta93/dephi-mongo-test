object dmDados: TdmDados
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 457
  Width = 647
  object FDConnection1: TFDConnection
    Params.Strings = (
      'DriverID=Mongo')
    LoginPrompt = False
    Left = 64
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'FMX'
    Left = 64
    Top = 80
  end
  object FDPhysMongoDriverLink1: TFDPhysMongoDriverLink
    Left = 64
    Top = 136
  end
  object FDMongoQuery1: TFDMongoQuery
    Connection = FDConnection1
    Left = 64
    Top = 192
  end
end
