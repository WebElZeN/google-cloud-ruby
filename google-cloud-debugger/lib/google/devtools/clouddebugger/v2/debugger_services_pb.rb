# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/devtools/clouddebugger/v2/debugger.proto for package 'google.devtools.clouddebugger.v2'
# Original file comments:
# Copyright 2019 Google LLC.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
#


require 'grpc'
require 'google/devtools/clouddebugger/v2/debugger_pb'

module Google
  module Devtools
    module Clouddebugger
      module V2
        module Debugger2
          # The Debugger service provides the API that allows users to collect run-time
          # information from a running application, without stopping or slowing it down
          # and without modifying its state.  An application may include one or
          # more replicated processes performing the same work.
          #
          # A debugged application is represented using the Debuggee concept. The
          # Debugger service provides a way to query for available debuggees, but does
          # not provide a way to create one.  A debuggee is created using the Controller
          # service, usually by running a debugger agent with the application.
          #
          # The Debugger service enables the client to set one or more Breakpoints on a
          # Debuggee and collect the results of the set Breakpoints.
          class Service

            include GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.devtools.clouddebugger.v2.Debugger2'

            # Sets the breakpoint to the debuggee.
            rpc :SetBreakpoint, SetBreakpointRequest, SetBreakpointResponse
            # Gets breakpoint information.
            rpc :GetBreakpoint, GetBreakpointRequest, GetBreakpointResponse
            # Deletes the breakpoint from the debuggee.
            rpc :DeleteBreakpoint, DeleteBreakpointRequest, Google::Protobuf::Empty
            # Lists all breakpoints for the debuggee.
            rpc :ListBreakpoints, ListBreakpointsRequest, ListBreakpointsResponse
            # Lists all the debuggees that the user has access to.
            rpc :ListDebuggees, ListDebuggeesRequest, ListDebuggeesResponse
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
