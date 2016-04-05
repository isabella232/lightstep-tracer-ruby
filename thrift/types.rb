#
# Autogenerated by Thrift Compiler (0.9.2)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'thrift'

class KeyValue
  include ::Thrift::Struct, ::Thrift::Struct_Union
  KEY = 1
  VALUE = 2

  FIELDS = {
    KEY => {:type => ::Thrift::Types::STRING, :name => 'Key'},
    VALUE => {:type => ::Thrift::Types::STRING, :name => 'Value'}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field Key is unset!') unless @Key
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field Value is unset!') unless @Value
  end

  ::Thrift::Struct.generate_accessors self
end

class NamedCounter
  include ::Thrift::Struct, ::Thrift::Struct_Union
  NAME = 1
  VALUE = 2

  FIELDS = {
    NAME => {:type => ::Thrift::Types::STRING, :name => 'Name'},
    VALUE => {:type => ::Thrift::Types::I64, :name => 'Value'}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field Name is unset!') unless @Name
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field Value is unset!') unless @Value
  end

  ::Thrift::Struct.generate_accessors self
end

class Runtime
  include ::Thrift::Struct, ::Thrift::Struct_Union
  GUID = 1
  START_MICROS = 2
  GROUP_NAME = 3
  ATTRS = 4

  FIELDS = {
    GUID => {:type => ::Thrift::Types::STRING, :name => 'guid', :optional => true},
    START_MICROS => {:type => ::Thrift::Types::I64, :name => 'start_micros', :optional => true},
    GROUP_NAME => {:type => ::Thrift::Types::STRING, :name => 'group_name', :optional => true},
    ATTRS => {:type => ::Thrift::Types::LIST, :name => 'attrs', :element => {:type => ::Thrift::Types::STRUCT, :class => ::KeyValue}, :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class LogRecord
  include ::Thrift::Struct, ::Thrift::Struct_Union
  TIMESTAMP_MICROS = 1
  RUNTIME_GUID = 2
  SPAN_GUID = 3
  STABLE_NAME = 4
  MESSAGE = 5
  LEVEL = 6
  THREAD_ID = 7
  FILENAME = 8
  LINE_NUMBER = 9
  STACK_FRAMES = 10
  PAYLOAD_JSON = 11
  ERROR_FLAG = 12

  FIELDS = {
    TIMESTAMP_MICROS => {:type => ::Thrift::Types::I64, :name => 'timestamp_micros', :optional => true},
    RUNTIME_GUID => {:type => ::Thrift::Types::STRING, :name => 'runtime_guid', :optional => true},
    SPAN_GUID => {:type => ::Thrift::Types::STRING, :name => 'span_guid', :optional => true},
    STABLE_NAME => {:type => ::Thrift::Types::STRING, :name => 'stable_name', :optional => true},
    MESSAGE => {:type => ::Thrift::Types::STRING, :name => 'message', :optional => true},
    LEVEL => {:type => ::Thrift::Types::STRING, :name => 'level', :optional => true},
    THREAD_ID => {:type => ::Thrift::Types::I64, :name => 'thread_id', :optional => true},
    FILENAME => {:type => ::Thrift::Types::STRING, :name => 'filename', :optional => true},
    LINE_NUMBER => {:type => ::Thrift::Types::I64, :name => 'line_number', :optional => true},
    STACK_FRAMES => {:type => ::Thrift::Types::LIST, :name => 'stack_frames', :element => {:type => ::Thrift::Types::STRING}, :optional => true},
    PAYLOAD_JSON => {:type => ::Thrift::Types::STRING, :name => 'payload_json', :optional => true},
    ERROR_FLAG => {:type => ::Thrift::Types::BOOL, :name => 'error_flag', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class TraceJoinId
  include ::Thrift::Struct, ::Thrift::Struct_Union
  TRACEKEY = 1
  VALUE = 2

  FIELDS = {
    TRACEKEY => {:type => ::Thrift::Types::STRING, :name => 'TraceKey'},
    VALUE => {:type => ::Thrift::Types::STRING, :name => 'Value'}
  }

  def struct_fields; FIELDS; end

  def validate
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field TraceKey is unset!') unless @TraceKey
    raise ::Thrift::ProtocolException.new(::Thrift::ProtocolException::UNKNOWN, 'Required field Value is unset!') unless @Value
  end

  ::Thrift::Struct.generate_accessors self
end

class SpanRecord
  include ::Thrift::Struct, ::Thrift::Struct_Union
  SPAN_GUID = 1
  RUNTIME_GUID = 2
  SPAN_NAME = 3
  JOIN_IDS = 4
  OLDEST_MICROS = 5
  YOUNGEST_MICROS = 6
  ATTRIBUTES = 8
  ERROR_FLAG = 9
  LOG_RECORDS = 10

  FIELDS = {
    SPAN_GUID => {:type => ::Thrift::Types::STRING, :name => 'span_guid', :optional => true},
    RUNTIME_GUID => {:type => ::Thrift::Types::STRING, :name => 'runtime_guid', :optional => true},
    SPAN_NAME => {:type => ::Thrift::Types::STRING, :name => 'span_name', :optional => true},
    JOIN_IDS => {:type => ::Thrift::Types::LIST, :name => 'join_ids', :element => {:type => ::Thrift::Types::STRUCT, :class => ::TraceJoinId}, :optional => true},
    OLDEST_MICROS => {:type => ::Thrift::Types::I64, :name => 'oldest_micros', :optional => true},
    YOUNGEST_MICROS => {:type => ::Thrift::Types::I64, :name => 'youngest_micros', :optional => true},
    ATTRIBUTES => {:type => ::Thrift::Types::LIST, :name => 'attributes', :element => {:type => ::Thrift::Types::STRUCT, :class => ::KeyValue}, :optional => true},
    ERROR_FLAG => {:type => ::Thrift::Types::BOOL, :name => 'error_flag', :optional => true},
    LOG_RECORDS => {:type => ::Thrift::Types::LIST, :name => 'log_records', :element => {:type => ::Thrift::Types::STRUCT, :class => ::LogRecord}, :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class Auth
  include ::Thrift::Struct, ::Thrift::Struct_Union
  ACCESS_TOKEN = 1

  FIELDS = {
    ACCESS_TOKEN => {:type => ::Thrift::Types::STRING, :name => 'access_token', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class Timing
  include ::Thrift::Struct, ::Thrift::Struct_Union
  RECEIVE_MICROS = 1
  TRANSMIT_MICROS = 2

  FIELDS = {
    RECEIVE_MICROS => {:type => ::Thrift::Types::I64, :name => 'receive_micros', :optional => true},
    TRANSMIT_MICROS => {:type => ::Thrift::Types::I64, :name => 'transmit_micros', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class SampleCount
  include ::Thrift::Struct, ::Thrift::Struct_Union
  OLDEST_MICROS = 1
  YOUNGEST_MICROS = 2
  COUNT = 3

  FIELDS = {
    OLDEST_MICROS => {:type => ::Thrift::Types::I64, :name => 'oldest_micros', :optional => true},
    YOUNGEST_MICROS => {:type => ::Thrift::Types::I64, :name => 'youngest_micros', :optional => true},
    COUNT => {:type => ::Thrift::Types::I64, :name => 'count', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class ReportRequest
  include ::Thrift::Struct, ::Thrift::Struct_Union
  RUNTIME = 1
  SPAN_RECORDS = 3
  LOG_RECORDS = 4
  TIMESTAMP_OFFSET_MICROS = 5
  OLDEST_MICROS = 7
  YOUNGEST_MICROS = 8
  COUNTERS = 9

  FIELDS = {
    RUNTIME => {:type => ::Thrift::Types::STRUCT, :name => 'runtime', :class => ::Runtime, :optional => true},
    SPAN_RECORDS => {:type => ::Thrift::Types::LIST, :name => 'span_records', :element => {:type => ::Thrift::Types::STRUCT, :class => ::SpanRecord}, :optional => true},
    LOG_RECORDS => {:type => ::Thrift::Types::LIST, :name => 'log_records', :element => {:type => ::Thrift::Types::STRUCT, :class => ::LogRecord}, :optional => true},
    TIMESTAMP_OFFSET_MICROS => {:type => ::Thrift::Types::I64, :name => 'timestamp_offset_micros', :optional => true},
    OLDEST_MICROS => {:type => ::Thrift::Types::I64, :name => 'oldest_micros', :optional => true},
    YOUNGEST_MICROS => {:type => ::Thrift::Types::I64, :name => 'youngest_micros', :optional => true},
    COUNTERS => {:type => ::Thrift::Types::LIST, :name => 'counters', :element => {:type => ::Thrift::Types::STRUCT, :class => ::NamedCounter}, :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class Command
  include ::Thrift::Struct, ::Thrift::Struct_Union
  DISABLE = 1

  FIELDS = {
    DISABLE => {:type => ::Thrift::Types::BOOL, :name => 'disable', :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end

class ReportResponse
  include ::Thrift::Struct, ::Thrift::Struct_Union
  COMMANDS = 1
  TIMING = 2
  ERRORS = 3

  FIELDS = {
    COMMANDS => {:type => ::Thrift::Types::LIST, :name => 'commands', :element => {:type => ::Thrift::Types::STRUCT, :class => ::Command}, :optional => true},
    TIMING => {:type => ::Thrift::Types::STRUCT, :name => 'timing', :class => ::Timing, :optional => true},
    ERRORS => {:type => ::Thrift::Types::LIST, :name => 'errors', :element => {:type => ::Thrift::Types::STRING}, :optional => true}
  }

  def struct_fields; FIELDS; end

  def validate
  end

  ::Thrift::Struct.generate_accessors self
end
