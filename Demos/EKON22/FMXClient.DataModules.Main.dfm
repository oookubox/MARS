object MainDataModule: TMainDataModule
  OldCreateOrder = False
  Height = 448
  Width = 533
  object MARSApplication: TMARSClientApplication
    DefaultMediaType = 'application/json'
    DefaultContentType = 'application/json'
    Client = MARSClient
    Left = 88
    Top = 8
  end
  object MARSClient: TMARSNetClient
    MARSEngineURL = 'http://localhost:8080/rest'
    ConnectTimeout = 60000
    ReadTimeout = 60000
    HttpClient.Asynchronous = False
    HttpClient.ConnectionTimeout = 60000
    HttpClient.ResponseTimeout = 60000
    HttpClient.AllowCookies = True
    HttpClient.HandleRedirects = True
    HttpClient.Accept = 'application/json-firedac,application/json'
    HttpClient.ContentType = 'application/json-firedac'
    HttpClient.UserAgent = 'Embarcadero URI Client/1.0'
    Left = 16
    Top = 8
  end
  object HelloWorldRes: TMARSClientResource
    Application = MARSApplication
    SpecificAccept = '*/*'
    Resource = 'helloworld'
    Left = 288
    Top = 72
  end
  object RecordSubRes: TMARSClientSubResourceJSON
    Application = MARSApplication
    SpecificAccept = 'application/json'
    SpecificContentType = 'application/json'
    Resource = 'record'
    ParentResource = HelloWorldRes
    Left = 168
    Top = 136
  end
  object RecordArraySubRes: TMARSClientSubResourceJSON
    Application = MARSApplication
    SpecificAccept = 'application/json'
    SpecificContentType = 'application/json'
    Resource = 'recordarray'
    ParentResource = HelloWorldRes
    Left = 168
    Top = 192
  end
  object ObjectSubRes: TMARSClientSubResourceJSON
    Application = MARSApplication
    SpecificAccept = 'application/json'
    SpecificContentType = 'application/json'
    Resource = 'object'
    ParentResource = HelloWorldRes
    Left = 272
    Top = 136
  end
  object ObjectArraySubRes: TMARSClientSubResourceJSON
    Application = MARSApplication
    SpecificAccept = 'application/json'
    SpecificContentType = 'application/json'
    Resource = 'objectarray'
    ParentResource = HelloWorldRes
    Left = 272
    Top = 192
  end
  object DatasetSubRes: TMARSClientSubResourceJSON
    Application = MARSApplication
    SpecificAccept = 'application/json'
    SpecificContentType = 'application/json'
    Resource = 'dataset'
    ParentResource = HelloWorldRes
    Left = 368
    Top = 136
  end
  object QueryFromDBRes: TMARSFDDataSetResource
    Application = MARSApplication
    SpecificAccept = 'application/json-firedac,application/json'
    SpecificContentType = 'application/json-firedac'
    Resource = 'helloworld/QueryFromDB'
    DataSet = QueryFromDBDataset
    Synchronize = True
    SendDelta = True
    Left = 456
    Top = 136
  end
  object QueryFromDBDataset: TFDMemTable
    ActiveStoredUsage = []
    Active = True
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 456
    Top = 192
  end
  object EchoSubRes: TMARSClientSubResource
    Application = MARSApplication
    SpecificAccept = '*/*'
    Resource = 'echo'
    ParentResource = HelloWorldRes
    Left = 64
    Top = 136
  end
  object ReverseSubRes: TMARSClientSubResource
    Application = MARSApplication
    SpecificAccept = '*/*'
    Resource = 'reverse'
    ParentResource = HelloWorldRes
    Left = 64
    Top = 200
  end
  object RecordAgeRes: TMARSClientResourceJSON
    Application = MARSApplication
    SpecificAccept = 'application/json'
    SpecificContentType = 'application/json'
    Resource = 'helloworld/recordAge'
    Left = 168
    Top = 264
  end
  object employeeDetails: TMARSFDResource
    Application = MARSApplication
    SpecificAccept = 'application/json-firedac,application/json'
    SpecificContentType = 'application/json-firedac'
    Resource = 'employeeDetails'
    QueryParams.Strings = (
      'empno=52')
    ResourceDataSets = <
      item
        DataSetName = 'EmployeeQuery'
        DataSet = EmployeeQuery1
        SendDelta = True
        Synchronize = True
      end
      item
        DataSetName = 'ProjectsQuery'
        DataSet = ProjectsQuery1
        SendDelta = True
        Synchronize = True
      end>
    Left = 352
    Top = 312
  end
  object EmployeeQuery1: TFDMemTable
    ActiveStoredUsage = []
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvPersistent, rvSilentMode]
    ResourceOptions.Persistent = True
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 320
    Top = 368
  end
  object ProjectsQuery1: TFDMemTable
    ActiveStoredUsage = []
    CachedUpdates = True
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 384
    Top = 384
  end
end
