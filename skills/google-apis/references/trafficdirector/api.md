# Traffic Director API - API Reference

**Version**: `v3` | **Methods**: 1 | **Schemas**: 45

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `trafficdirector.discovery.client_status` | POST | `v3/discovery:client_status` |  |

### `trafficdirector.discovery.client_status`

**POST** `v3/discovery:client_status`

**Request body**: `ClientStatusRequest`

**Response**: `ClientStatusResponse`

```typescript
const res = await trafficdirector.discovery.client_status({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `Address`

Addresses specify either a logical or physical address and port, which are used to tell Envoy where to bind/listen, connect to upstream and find management servers.

| Property | Type | Description |
|----------|------|-------------|
| `envoyInternalAddress` | `EnvoyInternalAddress` | Specifies a user-space address handled by :ref:`internal listeners `. |
| `pipe` | `Pipe` |  |
| `socketAddress` | `SocketAddress` |  |

### `BuildVersion`

BuildVersion combines SemVer version of extension with free-form build information (i.e. 'alpha', 'private-build') as a set of strings.

| Property | Type | Description |
|----------|------|-------------|
| `metadata` | `object` | Free-form build information. Envoy defines several well known keys in the source/common/version/v... |
| `version` | `SemanticVersion` | SemVer version of extension. |

### `ClientConfig`

All xds configs for a particular client.

| Property | Type | Description |
|----------|------|-------------|
| `clientScope` | `string` | For xDS clients, the scope in which the data is used. For example, gRPC indicates the data plane ... |
| `genericXdsConfigs` | `array<GenericXdsConfig>` | Represents generic xDS config and the exact config structure depends on the type URL (like Cluste... |
| `node` | `Node` | Node for a particular client. |
| `xdsConfig` | `array<PerXdsConfig>` | This field is deprecated in favor of generic_xds_configs which is much simpler and uniform in str... |

### `ClientStatusRequest`

Request for client status of clients identified by a list of NodeMatchers.

| Property | Type | Description |
|----------|------|-------------|
| `excludeResourceContents` | `boolean` | If true, the server will not include the resource contents in the response (i.e., the generic_xds... |
| `node` | `Node` | The node making the csds request. |
| `nodeMatchers` | `array<NodeMatcher>` | Management server can use these match criteria to identify clients. The match follows OR semantics. |

### `ClientStatusResponse`

| Property | Type | Description |
|----------|------|-------------|
| `config` | `array<ClientConfig>` | Client configs for the clients specified in the ClientStatusRequest. |

### `ClustersConfigDump`

Envoy's cluster manager fills this message with all currently known clusters. Cluster configuration information can be used to recreate an Envoy configuration by populating all clusters as static clusters or by returning them in a CDS response.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicActiveClusters` | `array<DynamicCluster>` | The dynamically loaded active clusters. These are clusters that are available to service data pla... |
| `dynamicWarmingClusters` | `array<DynamicCluster>` | The dynamically loaded warming clusters. These are clusters that are currently undergoing warming... |
| `staticClusters` | `array<StaticCluster>` | The statically loaded cluster configs. |
| `versionInfo` | `string` | This is the :ref:`version_info ` in the last processed CDS discovery response. If there are only ... |

### `ContextParams`

Additional parameters that can be used to select resource variants. These include any global context parameters, per-resource type client feature capabilities and per-resource type functional attributes. All per-resource type attributes will be `xds.resource.` prefixed and some of these are documented below: `xds.resource.listening_address`: The value is "IP:port" (e.g. "10.1.1.3:8080") which is the listening address of a Listener. Used in a Listener resource query.

| Property | Type | Description |
|----------|------|-------------|
| `params` | `object` |  |

### `DoubleMatcher`

Specifies the way to match a double value.

| Property | Type | Description |
|----------|------|-------------|
| `exact` | `number` | If specified, the input double value must be equal to the value specified here. |
| `range` | `DoubleRange` | If specified, the input double value must be in the range specified here. Note: The range is usin... |

### `DoubleRange`

Specifies the double start and end of the range using half-open interval semantics [start, end).

| Property | Type | Description |
|----------|------|-------------|
| `end` | `number` | end of the range (exclusive) |
| `start` | `number` | start of the range (inclusive) |

### `DynamicCluster`

Describes a dynamically loaded cluster via the CDS API. [#next-free-field: 6]

| Property | Type | Description |
|----------|------|-------------|
| `clientStatus` | `string` | The client status of this resource. [#not-implemented-hide:] |
| `cluster` | `object` | The cluster config. |
| `errorState` | `UpdateFailureState` | Set if the last update failed, cleared after the next successful update. The ``error_state`` fiel... |
| `lastUpdated` | `string` | The timestamp when the Cluster was last updated. |
| `versionInfo` | `string` | This is the per-resource version information. This version is currently taken from the :ref:`vers... |

### `DynamicEndpointConfig`

[#next-free-field: 6]

| Property | Type | Description |
|----------|------|-------------|
| `clientStatus` | `string` | The client status of this resource. [#not-implemented-hide:] |
| `endpointConfig` | `object` | The endpoint config. |
| `errorState` | `UpdateFailureState` | Set if the last update failed, cleared after the next successful update. The ``error_state`` fiel... |
| `lastUpdated` | `string` | [#not-implemented-hide:] The timestamp when the Endpoint was last updated. |
| `versionInfo` | `string` | [#not-implemented-hide:] This is the per-resource version information. This version is currently ... |

### `DynamicListener`

Describes a dynamically loaded listener via the LDS API. [#next-free-field: 7]

| Property | Type | Description |
|----------|------|-------------|
| `activeState` | `DynamicListenerState` | The listener state for any active listener by this name. These are listeners that are available t... |
| `clientStatus` | `string` | The client status of this resource. [#not-implemented-hide:] |
| `drainingState` | `DynamicListenerState` | The listener state for any draining listener by this name. These are listeners that are currently... |
| `errorState` | `UpdateFailureState` | Set if the last update failed, cleared after the next successful update. The ``error_state`` fiel... |
| `name` | `string` | The name or unique id of this listener, pulled from the DynamicListenerState config. |
| `warmingState` | `DynamicListenerState` | The listener state for any warming listener by this name. These are listeners that are currently ... |

### `DynamicListenerState`

| Property | Type | Description |
|----------|------|-------------|
| `lastUpdated` | `string` | The timestamp when the Listener was last successfully updated. |
| `listener` | `object` | The listener config. |
| `versionInfo` | `string` | This is the per-resource version information. This version is currently taken from the :ref:`vers... |

### `DynamicRouteConfig`

[#next-free-field: 6]

| Property | Type | Description |
|----------|------|-------------|
| `clientStatus` | `string` | The client status of this resource. [#not-implemented-hide:] |
| `errorState` | `UpdateFailureState` | Set if the last update failed, cleared after the next successful update. The ``error_state`` fiel... |
| `lastUpdated` | `string` | The timestamp when the Route was last updated. |
| `routeConfig` | `object` | The route config. |
| `versionInfo` | `string` | This is the per-resource version information. This version is currently taken from the :ref:`vers... |

### `DynamicScopedRouteConfigs`

[#next-free-field: 7]

| Property | Type | Description |
|----------|------|-------------|
| `clientStatus` | `string` | The client status of this resource. [#not-implemented-hide:] |
| `errorState` | `UpdateFailureState` | Set if the last update failed, cleared after the next successful update. The ``error_state`` fiel... |
| `lastUpdated` | `string` | The timestamp when the scoped route config set was last updated. |
| `name` | `string` | The name assigned to the scoped route configurations. |
| `scopedRouteConfigs` | `array<object>` | The scoped route configurations. |
| `versionInfo` | `string` | This is the per-resource version information. This version is currently taken from the :ref:`vers... |

### `EndpointsConfigDump`

Envoy's admin fill this message with all currently known endpoints. Endpoint configuration information can be used to recreate an Envoy configuration by populating all endpoints as static endpoints or by returning them in an EDS response.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicEndpointConfigs` | `array<DynamicEndpointConfig>` | The dynamically loaded endpoint configs. |
| `staticEndpointConfigs` | `array<StaticEndpointConfig>` | The statically loaded endpoint configs. |

### `EnvoyInternalAddress`

The address represents an envoy internal listener. [#comment:

| Property | Type | Description |
|----------|------|-------------|
| `endpointId` | `string` | Specifies an endpoint identifier to distinguish between multiple endpoints for the same internal ... |
| `serverListenerName` | `string` | Specifies the :ref:`name ` of the internal listener. |

### `Extension`

Version and identification for an Envoy extension. [#next-free-field: 7]

| Property | Type | Description |
|----------|------|-------------|
| `category` | `string` | Category of the extension. Extension category names use reverse DNS notation. For instance "envoy... |
| `disabled` | `boolean` | Indicates that the extension is present but was disabled via dynamic configuration. |
| `name` | `string` | This is the name of the Envoy filter as specified in the Envoy configuration, e.g. envoy.filters.... |
| `typeDescriptor` | `string` | [#not-implemented-hide:] Type descriptor of extension configuration proto. [#comment: |
| `typeUrls` | `array<string>` | Type URLs of extension configuration protos. |
| `version` | `BuildVersion` | The version is a property of the extension and maintained independently of other extensions and t... |

### `GenericXdsConfig`

GenericXdsConfig is used to specify the config status and the dump of any xDS resource identified by their type URL. It is the generalized version of the now deprecated ListenersConfigDump, ClustersConfigDump etc [#next-free-field: 10]

| Property | Type | Description |
|----------|------|-------------|
| `clientStatus` | `string` | Per xDS resource status from the view of a xDS client |
| `configStatus` | `string` | Per xDS resource config status. It is generated by management servers. It will not be present if ... |
| `errorState` | `UpdateFailureState` | Set if the last update failed, cleared after the next successful update. The *error_state* field ... |
| `isStaticResource` | `boolean` | Is static resource is true if it is specified in the config supplied through the file at the star... |
| `lastUpdated` | `string` | Timestamp when the xDS resource was last updated |
| `name` | `string` | Name of the xDS resource |
| `typeUrl` | `string` | Type_url represents the fully qualified name of xDS resource type like envoy.v3.Cluster, envoy.v3... |
| `versionInfo` | `string` | This is the :ref:`version_info ` in the last processed xDS discovery response. If there are only ... |
| `xdsConfig` | `object` | The xDS resource config. Actual content depends on the type |

### `GoogleRE2`

Google's `RE2 `_ regex engine. The regex string must adhere to the documented `syntax `_. The engine is designed to complete execution in linear time as well as limit the amount of memory used. Envoy supports program size checking via runtime. The runtime keys ``re2.max_program_size.error_level`` and ``re2.max_program_size.warn_level`` can be set to integers as the maximum program size or complexity that a compiled regex can have before an exception is thrown or a warning is logged, respectively. ``re2.max_program_size.error_level`` defaults to 100, and ``re2.max_program_size.warn_level`` has no default if unset (will not check/log a warning). Envoy emits two stats for tracking the program size of regexes: the histogram ``re2.program_size``, which records the program size, and the counter ``re2.exceeded_warn_level``, which is incremented each time the program size exceeds the warn level threshold.

| Property | Type | Description |
|----------|------|-------------|
| `maxProgramSize` | `integer` | This field controls the RE2 "program size" which is a rough estimate of how complex a compiled re... |

### `InlineScopedRouteConfigs`

| Property | Type | Description |
|----------|------|-------------|
| `lastUpdated` | `string` | The timestamp when the scoped route config set was last updated. |
| `name` | `string` | The name assigned to the scoped route configurations. |
| `scopedRouteConfigs` | `array<object>` | The scoped route configurations. |

### `ListMatcher`

Specifies the way to match a list value.

| Property | Type | Description |
|----------|------|-------------|
| `oneOf` | `ValueMatcher` | If specified, at least one of the values in the list must match the value specified. |

### `ListenersConfigDump`

Envoy's listener manager fills this message with all currently known listeners. Listener configuration information can be used to recreate an Envoy configuration by populating all listeners as static listeners or by returning them in a LDS response.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicListeners` | `array<DynamicListener>` | State for any warming, active, or draining listeners. |
| `staticListeners` | `array<StaticListener>` | The statically loaded listener configs. |
| `versionInfo` | `string` | This is the :ref:`version_info ` in the last processed LDS discovery response. If there are only ... |

### `Locality`

Identifies location of where either Envoy runs or where upstream hosts run.

| Property | Type | Description |
|----------|------|-------------|
| `region` | `string` | Region this :ref:`zone ` belongs to. |
| `subZone` | `string` | When used for locality of upstream hosts, this field further splits zone into smaller chunks of s... |
| `zone` | `string` | Defines the local service zone where Envoy is running. Though optional, it should be set if disco... |

### `Node`

Identifies a specific Envoy instance. The node identifier is presented to the management server, which may use this identifier to distinguish per Envoy configuration for serving. [#next-free-field: 13]

| Property | Type | Description |
|----------|------|-------------|
| `clientFeatures` | `array<string>` | Client feature support list. These are well known features described in the Envoy API repository ... |
| `cluster` | `string` | Defines the local service cluster name where Envoy is running. Though optional, it should be set ... |
| `dynamicParameters` | `object` | Map from xDS resource type URL to dynamic context parameters. These may vary at runtime (unlike o... |
| `extensions` | `array<Extension>` | List of extensions and their versions supported by the node. |
| `id` | `string` | An opaque node identifier for the Envoy node. This also provides the local service node name. It ... |
| `listeningAddresses` | `array<Address>` | Known listening ports on the node as a generic hint to the management server for filtering :ref:`... |
| `locality` | `Locality` | Locality specifying where the Envoy instance is running. |
| `metadata` | `object` | Opaque metadata extending the node identifier. Envoy will pass this directly to the management se... |
| `userAgentBuildVersion` | `BuildVersion` | Structured version of the entity requesting config. |
| `userAgentName` | `string` | Free-form string that identifies the entity requesting config. E.g. "envoy" or "grpc" |
| `userAgentVersion` | `string` | Free-form string that identifies the version of the entity requesting config. E.g. "1.12.2" or "a... |

### `NodeMatcher`

Specifies the way to match a Node. The match follows AND semantics.

| Property | Type | Description |
|----------|------|-------------|
| `nodeId` | `StringMatcher` | Specifies match criteria on the node id. |
| `nodeMetadatas` | `array<StructMatcher>` | Specifies match criteria on the node metadata. |

### `NullMatch`

NullMatch is an empty message to specify a null value.

### `OrMatcher`

Specifies a list of alternatives for the match.

| Property | Type | Description |
|----------|------|-------------|
| `valueMatchers` | `array<ValueMatcher>` |  |

### `PathSegment`

Specifies the segment in a path to retrieve value from Struct.

| Property | Type | Description |
|----------|------|-------------|
| `key` | `string` | If specified, use the key to retrieve the value in a Struct. |

### `PerXdsConfig`

Detailed config (per xDS) with status. [#next-free-field: 8]

| Property | Type | Description |
|----------|------|-------------|
| `clientStatus` | `string` | Client config status is populated by xDS clients. Will not be present if the CSDS server is an xD... |
| `clusterConfig` | `ClustersConfigDump` |  |
| `endpointConfig` | `EndpointsConfigDump` |  |
| `listenerConfig` | `ListenersConfigDump` |  |
| `routeConfig` | `RoutesConfigDump` |  |
| `scopedRouteConfig` | `ScopedRoutesConfigDump` |  |
| `status` | `string` | Config status generated by management servers. Will not be present if the CSDS server is an xDS c... |

### `Pipe`

| Property | Type | Description |
|----------|------|-------------|
| `mode` | `integer` | The mode for the Pipe. Not applicable for abstract sockets. |
| `path` | `string` | Unix Domain Socket path. On Linux, paths starting with '@' will use the abstract namespace. The s... |

### `RegexMatcher`

A regex matcher designed for safety when used with untrusted input.

| Property | Type | Description |
|----------|------|-------------|
| `googleRe2` | `GoogleRE2` | Google's RE2 regex engine. |
| `regex` | `string` | The regex match string. The string must be supported by the configured engine. The regex is match... |

### `RoutesConfigDump`

Envoy's RDS implementation fills this message with all currently loaded routes, as described by their RouteConfiguration objects. Static routes that are either defined in the bootstrap configuration or defined inline while configuring listeners are separated from those configured dynamically via RDS. Route configuration information can be used to recreate an Envoy configuration by populating all routes as static routes or by returning them in RDS responses.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicRouteConfigs` | `array<DynamicRouteConfig>` | The dynamically loaded route configs. |
| `staticRouteConfigs` | `array<StaticRouteConfig>` | The statically loaded route configs. |

### `ScopedRoutesConfigDump`

Envoy's scoped RDS implementation fills this message with all currently loaded route configuration scopes (defined via ScopedRouteConfigurationsSet protos). This message lists both the scopes defined inline with the higher order object (i.e., the HttpConnectionManager) and the dynamically obtained scopes via the SRDS API.

| Property | Type | Description |
|----------|------|-------------|
| `dynamicScopedRouteConfigs` | `array<DynamicScopedRouteConfigs>` | The dynamically loaded scoped route configs. |
| `inlineScopedRouteConfigs` | `array<InlineScopedRouteConfigs>` | The statically loaded scoped route configs. |

### `SemanticVersion`

Envoy uses SemVer (https://semver.org/). Major/minor versions indicate expected behaviors and APIs, the patch version field is used only for security fixes and can be generally ignored.

| Property | Type | Description |
|----------|------|-------------|
| `majorNumber` | `integer` |  |
| `minorNumber` | `integer` |  |
| `patch` | `integer` |  |

### `SocketAddress`

[#next-free-field: 8]

| Property | Type | Description |
|----------|------|-------------|
| `address` | `string` | The address for this socket. :ref:`Listeners ` will bind to the address. An empty address is not ... |
| `ipv4Compat` | `boolean` | When binding to an IPv6 address above, this enables `IPv4 compatibility `_. Binding to ``::`` wil... |
| `namedPort` | `string` | This is only valid if :ref:`resolver_name ` is specified below and the named resolver is capable ... |
| `networkNamespaceFilepath` | `string` | Filepath that specifies the Linux network namespace this socket will be created in (see ``man 7 n... |
| `portValue` | `integer` |  |
| `protocol` | `string` |  |
| `resolverName` | `string` | The name of the custom resolver. This must have been registered with Envoy. If this is empty, a c... |

### `StaticCluster`

Describes a statically loaded cluster.

| Property | Type | Description |
|----------|------|-------------|
| `cluster` | `object` | The cluster config. |
| `lastUpdated` | `string` | The timestamp when the Cluster was last updated. |

### `StaticEndpointConfig`

| Property | Type | Description |
|----------|------|-------------|
| `endpointConfig` | `object` | The endpoint config. |
| `lastUpdated` | `string` | [#not-implemented-hide:] The timestamp when the Endpoint was last updated. |

### `StaticListener`

Describes a statically loaded listener.

| Property | Type | Description |
|----------|------|-------------|
| `lastUpdated` | `string` | The timestamp when the Listener was last successfully updated. |
| `listener` | `object` | The listener config. |

### `StaticRouteConfig`

| Property | Type | Description |
|----------|------|-------------|
| `lastUpdated` | `string` | The timestamp when the Route was last updated. |
| `routeConfig` | `object` | The route config. |

### `StringMatcher`

Specifies the way to match a string. [#next-free-field: 9]

| Property | Type | Description |
|----------|------|-------------|
| `contains` | `string` | The input string must have the substring specified here. .. note:: Empty contains match is not al... |
| `custom` | `TypedExtensionConfig` | Use an extension as the matcher type. [#extension-category: envoy.string_matcher] |
| `exact` | `string` | The input string must match exactly the string specified here. Examples: * ``abc`` only matches t... |
| `ignoreCase` | `boolean` | If ``true``, indicates the exact/prefix/suffix/contains matching should be case insensitive. This... |
| `prefix` | `string` | The input string must have the prefix specified here. .. note:: Empty prefix match is not allowed... |
| `safeRegex` | `RegexMatcher` | The input string must match the regular expression specified here. |
| `suffix` | `string` | The input string must have the suffix specified here. .. note:: Empty suffix match is not allowed... |

### `StructMatcher`

StructMatcher provides a general interface to check if a given value is matched in google.protobuf.Struct. It uses ``path`` to retrieve the value from the struct and then check if it's matched to the specified value. For example, for the following Struct: .. code-block:: yaml fields: a: struct_value: fields: b: struct_value: fields: c: string_value: pro t: list_value: values: - string_value: m - string_value: n The following MetadataMatcher is matched as the path [a, b, c] will retrieve a string value "pro" from the Metadata which is matched to the specified prefix match. .. code-block:: yaml path: - key: a - key: b - key: c value: string_match: prefix: pr The following StructMatcher is matched as the code will match one of the string values in the list at the path [a, t]. .. code-block:: yaml path: - key: a - key: t value: list_match: one_of: string_match: exact: m An example use of StructMatcher is to match metadata in envoy.v*.core.Node.

| Property | Type | Description |
|----------|------|-------------|
| `path` | `array<PathSegment>` | The path to retrieve the Value from the Struct. |
| `value` | `ValueMatcher` | The StructMatcher is matched if the value retrieved by path is matched to this value. |

### `TypedExtensionConfig`

Message type for extension configuration.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | The name of an extension. This is not used to select the extension, instead it serves the role of... |
| `typedConfig` | `object` | The typed config for the extension. The type URL will be used to identify the extension. In the c... |

### `UpdateFailureState`

| Property | Type | Description |
|----------|------|-------------|
| `details` | `string` | Details about the last failed update attempt. |
| `failedConfiguration` | `object` | What the component configuration would have been if the update had succeeded. This field may not ... |
| `lastUpdateAttempt` | `string` | Time of the latest failed update attempt. |
| `versionInfo` | `string` | This is the version of the rejected resource. [#not-implemented-hide:] |

### `ValueMatcher`

Specifies the way to match a Protobuf::Value. Primitive values and ListValue are supported. StructValue is not supported and is always not matched. [#next-free-field: 8]

| Property | Type | Description |
|----------|------|-------------|
| `boolMatch` | `boolean` | If specified, a match occurs if and only if the target value is a bool value and is equal to this... |
| `doubleMatch` | `DoubleMatcher` | If specified, a match occurs if and only if the target value is a double value and is matched to ... |
| `listMatch` | `ListMatcher` | If specified, a match occurs if and only if the target value is a list value and is matched to th... |
| `nullMatch` | `NullMatch` | If specified, a match occurs if and only if the target value is a NullValue. |
| `orMatch` | `OrMatcher` | If specified, a match occurs if and only if any of the alternatives in the match accept the value. |
| `presentMatch` | `boolean` | If specified, value match will be performed based on whether the path is referring to a valid pri... |
| `stringMatch` | `StringMatcher` | If specified, a match occurs if and only if the target value is a string value and is matched to ... |

