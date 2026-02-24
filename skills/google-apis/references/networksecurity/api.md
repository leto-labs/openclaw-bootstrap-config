# Network Security API - API Reference

**Version**: `v1` | **Methods**: 158 | **Schemas**: 114

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `networksecurity.organizations.locations.securityProfiles.create` | POST | `v1/{+parent}/securityProfiles` | Creates a new SecurityProfile in a given organization and location. |
| `networksecurity.organizations.locations.securityProfiles.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single SecurityProfile. |
| `networksecurity.organizations.locations.securityProfiles.get` | GET | `v1/{+name}` | Gets details of a single SecurityProfile. |
| `networksecurity.organizations.locations.securityProfiles.list` | GET | `v1/{+parent}/securityProfiles` | Lists SecurityProfiles in a given organization and location. |
| `networksecurity.organizations.locations.securityProfiles.delete` | DELETE | `v1/{+name}` | Deletes a single SecurityProfile. |
| `networksecurity.organizations.locations.securityProfileGroups.create` | POST | `v1/{+parent}/securityProfileGroups` | Creates a new SecurityProfileGroup in a given organization and location. |
| `networksecurity.organizations.locations.securityProfileGroups.list` | GET | `v1/{+parent}/securityProfileGroups` | Lists SecurityProfileGroups in a given organization and location. |
| `networksecurity.organizations.locations.securityProfileGroups.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single SecurityProfileGroup. |
| `networksecurity.organizations.locations.securityProfileGroups.get` | GET | `v1/{+name}` | Gets details of a single SecurityProfileGroup. |
| `networksecurity.organizations.locations.securityProfileGroups.delete` | DELETE | `v1/{+name}` | Deletes a single SecurityProfileGroup. |
| `networksecurity.organizations.locations.firewallEndpoints.patch` | PATCH | `v1/{+name}` | Update a single org Endpoint. |
| `networksecurity.organizations.locations.firewallEndpoints.create` | POST | `v1/{+parent}/firewallEndpoints` | Creates a new FirewallEndpoint in a given organization and location. |
| `networksecurity.organizations.locations.firewallEndpoints.get` | GET | `v1/{+name}` | Gets details of a single org Endpoint. |
| `networksecurity.organizations.locations.firewallEndpoints.list` | GET | `v1/{+parent}/firewallEndpoints` | Lists FirewallEndpoints in a given organization and location. |
| `networksecurity.organizations.locations.firewallEndpoints.delete` | DELETE | `v1/{+name}` | Deletes a single org Endpoint. |
| `networksecurity.organizations.locations.addressGroups.list` | GET | `v1/{+parent}/addressGroups` | Lists address groups in a given project and location. |
| `networksecurity.organizations.locations.addressGroups.patch` | PATCH | `v1/{+name}` | Updates parameters of an address group. |
| `networksecurity.organizations.locations.addressGroups.cloneItems` | POST | `v1/{+addressGroup}:cloneItems` | Clones items from one address group to another. |
| `networksecurity.organizations.locations.addressGroups.create` | POST | `v1/{+parent}/addressGroups` | Creates a new address group in a given project and location. |
| `networksecurity.organizations.locations.addressGroups.removeItems` | POST | `v1/{+addressGroup}:removeItems` | Removes items from an address group. |
| `networksecurity.organizations.locations.addressGroups.listReferences` | GET | `v1/{+addressGroup}:listReferences` | Lists references of an address group. |
| `networksecurity.organizations.locations.addressGroups.delete` | DELETE | `v1/{+name}` | Deletes an address group. |
| `networksecurity.organizations.locations.addressGroups.get` | GET | `v1/{+name}` | Gets details of a single address group. |
| `networksecurity.organizations.locations.addressGroups.addItems` | POST | `v1/{+addressGroup}:addItems` | Adds items to an address group. |
| `networksecurity.organizations.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `networksecurity.organizations.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `networksecurity.organizations.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `networksecurity.organizations.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `networksecurity.projects.locations.list` | GET | `v1/{+name}/locations` | Lists information about the supported locations for this service. This method can be called in tw... |
| `networksecurity.projects.locations.get` | GET | `v1/{+name}` | Gets information about a location. |
| `networksecurity.projects.locations.mirroringEndpointGroupAssociations.patch` | PATCH | `v1/{+name}` | Updates an association. See https://google.aip.dev/134. |
| `networksecurity.projects.locations.mirroringEndpointGroupAssociations.delete` | DELETE | `v1/{+name}` | Deletes an association. See https://google.aip.dev/135. |
| `networksecurity.projects.locations.mirroringEndpointGroupAssociations.list` | GET | `v1/{+parent}/mirroringEndpointGroupAssociations` | Lists associations in a given project and location. See https://google.aip.dev/132. |
| `networksecurity.projects.locations.mirroringEndpointGroupAssociations.get` | GET | `v1/{+name}` | Gets a specific association. See https://google.aip.dev/131. |
| `networksecurity.projects.locations.mirroringEndpointGroupAssociations.create` | POST | `v1/{+parent}/mirroringEndpointGroupAssociations` | Creates an association in a given project and location. See https://google.aip.dev/133. |
| `networksecurity.projects.locations.serverTlsPolicies.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networksecurity.projects.locations.serverTlsPolicies.list` | GET | `v1/{+parent}/serverTlsPolicies` | Lists ServerTlsPolicies in a given project and location. |
| `networksecurity.projects.locations.serverTlsPolicies.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single ServerTlsPolicy. |
| `networksecurity.projects.locations.serverTlsPolicies.create` | POST | `v1/{+parent}/serverTlsPolicies` | Creates a new ServerTlsPolicy in a given project and location. |
| `networksecurity.projects.locations.serverTlsPolicies.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networksecurity.projects.locations.serverTlsPolicies.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networksecurity.projects.locations.serverTlsPolicies.get` | GET | `v1/{+name}` | Gets details of a single ServerTlsPolicy. |
| `networksecurity.projects.locations.serverTlsPolicies.delete` | DELETE | `v1/{+name}` | Deletes a single ServerTlsPolicy. |
| `networksecurity.projects.locations.authzPolicies.get` | GET | `v1/{+name}` | Gets details of a single AuthzPolicy. |
| `networksecurity.projects.locations.authzPolicies.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networksecurity.projects.locations.authzPolicies.delete` | DELETE | `v1/{+name}` | Deletes a single AuthzPolicy. |
| `networksecurity.projects.locations.authzPolicies.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networksecurity.projects.locations.authzPolicies.list` | GET | `v1/{+parent}/authzPolicies` | Lists AuthzPolicies in a given project and location. |
| `networksecurity.projects.locations.authzPolicies.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networksecurity.projects.locations.authzPolicies.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single AuthzPolicy. |
| `networksecurity.projects.locations.authzPolicies.create` | POST | `v1/{+parent}/authzPolicies` | Creates a new AuthzPolicy in a given project and location. |
| `networksecurity.projects.locations.tlsInspectionPolicies.create` | POST | `v1/{+parent}/tlsInspectionPolicies` | Creates a new TlsInspectionPolicy in a given project and location. |
| `networksecurity.projects.locations.tlsInspectionPolicies.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single TlsInspectionPolicy. |
| `networksecurity.projects.locations.tlsInspectionPolicies.delete` | DELETE | `v1/{+name}` | Deletes a single TlsInspectionPolicy. |
| `networksecurity.projects.locations.tlsInspectionPolicies.list` | GET | `v1/{+parent}/tlsInspectionPolicies` | Lists TlsInspectionPolicies in a given project and location. |
| `networksecurity.projects.locations.tlsInspectionPolicies.get` | GET | `v1/{+name}` | Gets details of a single TlsInspectionPolicy. |
| `networksecurity.projects.locations.urlLists.create` | POST | `v1/{+parent}/urlLists` | Creates a new UrlList in a given project and location. |
| `networksecurity.projects.locations.urlLists.delete` | DELETE | `v1/{+name}` | Deletes a single UrlList. |
| `networksecurity.projects.locations.urlLists.list` | GET | `v1/{+parent}/urlLists` | Lists UrlLists in a given project and location. |
| `networksecurity.projects.locations.urlLists.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single UrlList. |
| `networksecurity.projects.locations.urlLists.get` | GET | `v1/{+name}` | Gets details of a single UrlList. |
| `networksecurity.projects.locations.backendAuthenticationConfigs.get` | GET | `v1/{+name}` | Gets details of a single BackendAuthenticationConfig to BackendAuthenticationConfig. |
| `networksecurity.projects.locations.backendAuthenticationConfigs.list` | GET | `v1/{+parent}/backendAuthenticationConfigs` | Lists BackendAuthenticationConfigs in a given project and location. |
| `networksecurity.projects.locations.backendAuthenticationConfigs.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single BackendAuthenticationConfig to BackendAuthenticationConfig. |
| `networksecurity.projects.locations.backendAuthenticationConfigs.create` | POST | `v1/{+parent}/backendAuthenticationConfigs` | Creates a new BackendAuthenticationConfig in a given project and location. |
| `networksecurity.projects.locations.backendAuthenticationConfigs.delete` | DELETE | `v1/{+name}` | Deletes a single BackendAuthenticationConfig to BackendAuthenticationConfig. |
| `networksecurity.projects.locations.mirroringEndpointGroups.get` | GET | `v1/{+name}` | Gets a specific endpoint group. See https://google.aip.dev/131. |
| `networksecurity.projects.locations.mirroringEndpointGroups.delete` | DELETE | `v1/{+name}` | Deletes an endpoint group. See https://google.aip.dev/135. |
| `networksecurity.projects.locations.mirroringEndpointGroups.patch` | PATCH | `v1/{+name}` | Updates an endpoint group. See https://google.aip.dev/134. |
| `networksecurity.projects.locations.mirroringEndpointGroups.create` | POST | `v1/{+parent}/mirroringEndpointGroups` | Creates an endpoint group in a given project and location. See https://google.aip.dev/133. |
| `networksecurity.projects.locations.mirroringEndpointGroups.list` | GET | `v1/{+parent}/mirroringEndpointGroups` | Lists endpoint groups in a given project and location. See https://google.aip.dev/132. |
| `networksecurity.projects.locations.interceptDeployments.get` | GET | `v1/{+name}` | Gets a specific deployment. See https://google.aip.dev/131. |
| `networksecurity.projects.locations.interceptDeployments.list` | GET | `v1/{+parent}/interceptDeployments` | Lists deployments in a given project and location. See https://google.aip.dev/132. |
| `networksecurity.projects.locations.interceptDeployments.patch` | PATCH | `v1/{+name}` | Updates a deployment. See https://google.aip.dev/134. |
| `networksecurity.projects.locations.interceptDeployments.delete` | DELETE | `v1/{+name}` | Deletes a deployment. See https://google.aip.dev/135. |
| `networksecurity.projects.locations.interceptDeployments.create` | POST | `v1/{+parent}/interceptDeployments` | Creates a deployment in a given project and location. See https://google.aip.dev/133. |
| `networksecurity.projects.locations.addressGroups.delete` | DELETE | `v1/{+name}` | Deletes a single address group. |
| `networksecurity.projects.locations.addressGroups.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single address group. |
| `networksecurity.projects.locations.addressGroups.cloneItems` | POST | `v1/{+addressGroup}:cloneItems` | Clones items from one address group to another. |
| `networksecurity.projects.locations.addressGroups.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networksecurity.projects.locations.addressGroups.listReferences` | GET | `v1/{+addressGroup}:listReferences` | Lists references of an address group. |
| `networksecurity.projects.locations.addressGroups.create` | POST | `v1/{+parent}/addressGroups` | Creates a new address group in a given project and location. |
| `networksecurity.projects.locations.addressGroups.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networksecurity.projects.locations.addressGroups.addItems` | POST | `v1/{+addressGroup}:addItems` | Adds items to an address group. |
| `networksecurity.projects.locations.addressGroups.removeItems` | POST | `v1/{+addressGroup}:removeItems` | Removes items from an address group. |
| `networksecurity.projects.locations.addressGroups.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networksecurity.projects.locations.addressGroups.get` | GET | `v1/{+name}` | Gets details of a single address group. |
| `networksecurity.projects.locations.addressGroups.list` | GET | `v1/{+parent}/addressGroups` | Lists address groups in a given project and location. |
| `networksecurity.projects.locations.firewallEndpointAssociations.create` | POST | `v1/{+parent}/firewallEndpointAssociations` | Creates a new FirewallEndpointAssociation in a given project and location. |
| `networksecurity.projects.locations.firewallEndpointAssociations.delete` | DELETE | `v1/{+name}` | Deletes a single FirewallEndpointAssociation. |
| `networksecurity.projects.locations.firewallEndpointAssociations.list` | GET | `v1/{+parent}/firewallEndpointAssociations` | Lists Associations in a given project and location. |
| `networksecurity.projects.locations.firewallEndpointAssociations.get` | GET | `v1/{+name}` | Gets details of a single FirewallEndpointAssociation. |
| `networksecurity.projects.locations.firewallEndpointAssociations.patch` | PATCH | `v1/{+name}` | Update a single FirewallEndpointAssociation. |
| `networksecurity.projects.locations.interceptEndpointGroupAssociations.delete` | DELETE | `v1/{+name}` | Deletes an association. See https://google.aip.dev/135. |
| `networksecurity.projects.locations.interceptEndpointGroupAssociations.get` | GET | `v1/{+name}` | Gets a specific association. See https://google.aip.dev/131. |
| `networksecurity.projects.locations.interceptEndpointGroupAssociations.list` | GET | `v1/{+parent}/interceptEndpointGroupAssociations` | Lists associations in a given project and location. See https://google.aip.dev/132. |
| `networksecurity.projects.locations.interceptEndpointGroupAssociations.patch` | PATCH | `v1/{+name}` | Updates an association. See https://google.aip.dev/134. |
| `networksecurity.projects.locations.interceptEndpointGroupAssociations.create` | POST | `v1/{+parent}/interceptEndpointGroupAssociations` | Creates an association in a given project and location. See https://google.aip.dev/133. |
| `networksecurity.projects.locations.authorizationPolicies.list` | GET | `v1/{+parent}/authorizationPolicies` | Lists AuthorizationPolicies in a given project and location. |
| `networksecurity.projects.locations.authorizationPolicies.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networksecurity.projects.locations.authorizationPolicies.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networksecurity.projects.locations.authorizationPolicies.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single AuthorizationPolicy. |
| `networksecurity.projects.locations.authorizationPolicies.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networksecurity.projects.locations.authorizationPolicies.create` | POST | `v1/{+parent}/authorizationPolicies` | Creates a new AuthorizationPolicy in a given project and location. |
| `networksecurity.projects.locations.authorizationPolicies.get` | GET | `v1/{+name}` | Gets details of a single AuthorizationPolicy. |
| `networksecurity.projects.locations.authorizationPolicies.delete` | DELETE | `v1/{+name}` | Deletes a single AuthorizationPolicy. |
| `networksecurity.projects.locations.gatewaySecurityPolicies.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single GatewaySecurityPolicy. |
| `networksecurity.projects.locations.gatewaySecurityPolicies.create` | POST | `v1/{+parent}/gatewaySecurityPolicies` | Creates a new GatewaySecurityPolicy in a given project and location. |
| `networksecurity.projects.locations.gatewaySecurityPolicies.list` | GET | `v1/{+parent}/gatewaySecurityPolicies` | Lists GatewaySecurityPolicies in a given project and location. |
| `networksecurity.projects.locations.gatewaySecurityPolicies.delete` | DELETE | `v1/{+name}` | Deletes a single GatewaySecurityPolicy. |
| `networksecurity.projects.locations.gatewaySecurityPolicies.get` | GET | `v1/{+name}` | Gets details of a single GatewaySecurityPolicy. |
| `networksecurity.projects.locations.gatewaySecurityPolicies.rules.delete` | DELETE | `v1/{+name}` | Deletes a single GatewaySecurityPolicyRule. |
| `networksecurity.projects.locations.gatewaySecurityPolicies.rules.list` | GET | `v1/{+parent}/rules` | Lists GatewaySecurityPolicyRules in a given project and location. |
| `networksecurity.projects.locations.gatewaySecurityPolicies.rules.get` | GET | `v1/{+name}` | Gets details of a single GatewaySecurityPolicyRule. |
| `networksecurity.projects.locations.gatewaySecurityPolicies.rules.create` | POST | `v1/{+parent}/rules` | Creates a new GatewaySecurityPolicy in a given project and location. |
| `networksecurity.projects.locations.gatewaySecurityPolicies.rules.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single GatewaySecurityPolicyRule. |
| `networksecurity.projects.locations.dnsThreatDetectors.create` | POST | `v1/{+parent}/dnsThreatDetectors` | Creates a new DnsThreatDetector in a given project and location. |
| `networksecurity.projects.locations.dnsThreatDetectors.list` | GET | `v1/{+parent}/dnsThreatDetectors` | Lists DnsThreatDetectors in a given project and location. |
| `networksecurity.projects.locations.dnsThreatDetectors.patch` | PATCH | `v1/{+name}` | Updates a single DnsThreatDetector. |
| `networksecurity.projects.locations.dnsThreatDetectors.get` | GET | `v1/{+name}` | Gets the details of a single DnsThreatDetector. |
| `networksecurity.projects.locations.dnsThreatDetectors.delete` | DELETE | `v1/{+name}` | Deletes a single DnsThreatDetector. |
| `networksecurity.projects.locations.firewallEndpoints.create` | POST | `v1/{+parent}/firewallEndpoints` | Creates a new FirewallEndpoint in a given project and location. |
| `networksecurity.projects.locations.firewallEndpoints.patch` | PATCH | `v1/{+name}` | Update a single project Endpoint. |
| `networksecurity.projects.locations.firewallEndpoints.get` | GET | `v1/{+name}` | Gets details of a single project Endpoint. |
| `networksecurity.projects.locations.firewallEndpoints.delete` | DELETE | `v1/{+name}` | Deletes a single project Endpoint. |
| `networksecurity.projects.locations.firewallEndpoints.list` | GET | `v1/{+parent}/firewallEndpoints` | Lists FirewallEndpoints in a given project and location. |
| `networksecurity.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `networksecurity.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `networksecurity.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `networksecurity.projects.locations.operations.delete` | DELETE | `v1/{+name}` | Deletes a long-running operation. This method indicates that the client is no longer interested i... |
| `networksecurity.projects.locations.interceptDeploymentGroups.list` | GET | `v1/{+parent}/interceptDeploymentGroups` | Lists deployment groups in a given project and location. See https://google.aip.dev/132. |
| `networksecurity.projects.locations.interceptDeploymentGroups.delete` | DELETE | `v1/{+name}` | Deletes a deployment group. See https://google.aip.dev/135. |
| `networksecurity.projects.locations.interceptDeploymentGroups.create` | POST | `v1/{+parent}/interceptDeploymentGroups` | Creates a deployment group in a given project and location. See https://google.aip.dev/133. |
| `networksecurity.projects.locations.interceptDeploymentGroups.get` | GET | `v1/{+name}` | Gets a specific deployment group. See https://google.aip.dev/131. |
| `networksecurity.projects.locations.interceptDeploymentGroups.patch` | PATCH | `v1/{+name}` | Updates a deployment group. See https://google.aip.dev/134. |
| `networksecurity.projects.locations.interceptEndpointGroups.create` | POST | `v1/{+parent}/interceptEndpointGroups` | Creates an endpoint group in a given project and location. See https://google.aip.dev/133. |
| `networksecurity.projects.locations.interceptEndpointGroups.get` | GET | `v1/{+name}` | Gets a specific endpoint group. See https://google.aip.dev/131. |
| `networksecurity.projects.locations.interceptEndpointGroups.list` | GET | `v1/{+parent}/interceptEndpointGroups` | Lists endpoint groups in a given project and location. See https://google.aip.dev/132. |
| `networksecurity.projects.locations.interceptEndpointGroups.patch` | PATCH | `v1/{+name}` | Updates an endpoint group. See https://google.aip.dev/134. |
| `networksecurity.projects.locations.interceptEndpointGroups.delete` | DELETE | `v1/{+name}` | Deletes an endpoint group. See https://google.aip.dev/135. |
| `networksecurity.projects.locations.mirroringDeployments.get` | GET | `v1/{+name}` | Gets a specific deployment. See https://google.aip.dev/131. |
| `networksecurity.projects.locations.mirroringDeployments.delete` | DELETE | `v1/{+name}` | Deletes a deployment. See https://google.aip.dev/135. |
| `networksecurity.projects.locations.mirroringDeployments.list` | GET | `v1/{+parent}/mirroringDeployments` | Lists deployments in a given project and location. See https://google.aip.dev/132. |
| `networksecurity.projects.locations.mirroringDeployments.patch` | PATCH | `v1/{+name}` | Updates a deployment. See https://google.aip.dev/134. |
| `networksecurity.projects.locations.mirroringDeployments.create` | POST | `v1/{+parent}/mirroringDeployments` | Creates a deployment in a given project and location. See https://google.aip.dev/133. |
| `networksecurity.projects.locations.mirroringDeploymentGroups.get` | GET | `v1/{+name}` | Gets a specific deployment group. See https://google.aip.dev/131. |
| `networksecurity.projects.locations.mirroringDeploymentGroups.patch` | PATCH | `v1/{+name}` | Updates a deployment group. See https://google.aip.dev/134. |
| `networksecurity.projects.locations.mirroringDeploymentGroups.list` | GET | `v1/{+parent}/mirroringDeploymentGroups` | Lists deployment groups in a given project and location. See https://google.aip.dev/132. |
| `networksecurity.projects.locations.mirroringDeploymentGroups.delete` | DELETE | `v1/{+name}` | Deletes a deployment group. See https://google.aip.dev/135. |
| `networksecurity.projects.locations.mirroringDeploymentGroups.create` | POST | `v1/{+parent}/mirroringDeploymentGroups` | Creates a deployment group in a given project and location. See https://google.aip.dev/133. |
| `networksecurity.projects.locations.clientTlsPolicies.list` | GET | `v1/{+parent}/clientTlsPolicies` | Lists ClientTlsPolicies in a given project and location. |
| `networksecurity.projects.locations.clientTlsPolicies.create` | POST | `v1/{+parent}/clientTlsPolicies` | Creates a new ClientTlsPolicy in a given project and location. |
| `networksecurity.projects.locations.clientTlsPolicies.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `networksecurity.projects.locations.clientTlsPolicies.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `networksecurity.projects.locations.clientTlsPolicies.delete` | DELETE | `v1/{+name}` | Deletes a single ClientTlsPolicy. |
| `networksecurity.projects.locations.clientTlsPolicies.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `networksecurity.projects.locations.clientTlsPolicies.get` | GET | `v1/{+name}` | Gets details of a single ClientTlsPolicy. |
| `networksecurity.projects.locations.clientTlsPolicies.patch` | PATCH | `v1/{+name}` | Updates the parameters of a single ClientTlsPolicy. |

### `networksecurity.organizations.locations.securityProfiles.create`

**POST** `v1/{+parent}/securityProfiles`

Creates a new SecurityProfile in a given organization and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the SecurityProfile. Must be in the format `projects|organizations/*/locations/{loca... |
| `securityProfileId` | `string` | query | No | Required. Short name of the SecurityProfile resource to be created. This value should be 1-63 characters long, contai... |

**Request body**: `SecurityProfile`

**Response**: `Operation`

```typescript
const res = await networksecurity.securityProfiles.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.securityProfiles.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single SecurityProfile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. Name of the SecurityProfile resource. It matches pattern `projects|organizations/*/locations/{... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the SecurityProfile resource by the update. T... |

**Request body**: `SecurityProfile`

**Response**: `Operation`

```typescript
const res = await networksecurity.securityProfiles.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.securityProfiles.get`

**GET** `v1/{+name}`

Gets details of a single SecurityProfile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the SecurityProfile to get. Must be in the format `projects|organizations/*/locations/{location}/... |

**Response**: `SecurityProfile`

```typescript
const res = await networksecurity.securityProfiles.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.securityProfiles.list`

**GET** `v1/{+parent}/securityProfiles`

Lists SecurityProfiles in a given organization and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project or organization and location from which the SecurityProfiles should be listed, specified in the... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of SecurityProfiles to return per call. |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListSecurityProfilesResponse` Indicates that this is a continuation of a pr... |

**Response**: `ListSecurityProfilesResponse`

```typescript
const res = await networksecurity.securityProfiles.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.securityProfiles.delete`

**DELETE** `v1/{+name}`

Deletes a single SecurityProfile.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the SecurityProfile to delete. Must be in the format `projects|organizations/*/locations/{locatio... |
| `etag` | `string` | query | No | Optional. If client provided etag is out of date, delete will return FAILED_PRECONDITION error. |

**Response**: `Operation`

```typescript
const res = await networksecurity.securityProfiles.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.securityProfileGroups.create`

**POST** `v1/{+parent}/securityProfileGroups`

Creates a new SecurityProfileGroup in a given organization and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the SecurityProfileGroup. Must be in the format `projects|organizations/*/locations/... |
| `securityProfileGroupId` | `string` | query | No | Required. Short name of the SecurityProfileGroup resource to be created. This value should be 1-63 characters long, c... |

**Request body**: `SecurityProfileGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.securityProfileGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.securityProfileGroups.list`

**GET** `v1/{+parent}/securityProfileGroups`

Lists SecurityProfileGroups in a given organization and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project or organization and location from which the SecurityProfileGroups should be listed, specified i... |
| `pageSize` | `integer` | query | No | Optional. Maximum number of SecurityProfileGroups to return per call. |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListSecurityProfileGroupsResponse` Indicates that this is a continuation of... |

**Response**: `ListSecurityProfileGroupsResponse`

```typescript
const res = await networksecurity.securityProfileGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.securityProfileGroups.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single SecurityProfileGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. Name of the SecurityProfileGroup resource. It matches pattern `projects|organizations/*/locati... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the SecurityProfileGroup resource by the upda... |

**Request body**: `SecurityProfileGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.securityProfileGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.securityProfileGroups.get`

**GET** `v1/{+name}`

Gets details of a single SecurityProfileGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the SecurityProfileGroup to get. Must be in the format `projects|organizations/*/locations/{locat... |

**Response**: `SecurityProfileGroup`

```typescript
const res = await networksecurity.securityProfileGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.securityProfileGroups.delete`

**DELETE** `v1/{+name}`

Deletes a single SecurityProfileGroup.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the SecurityProfileGroup to delete. Must be in the format `projects|organizations/*/locations/{lo... |
| `etag` | `string` | query | No | Optional. If client provided etag is out of date, delete will return FAILED_PRECONDITION error. |

**Response**: `Operation`

```typescript
const res = await networksecurity.securityProfileGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.firewallEndpoints.patch`

**PATCH** `v1/{+name}`

Update a single org Endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. Name of resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Endpoint resource by the update. The fiel... |

**Request body**: `FirewallEndpoint`

**Response**: `Operation`

```typescript
const res = await networksecurity.firewallEndpoints.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.firewallEndpoints.create`

**POST** `v1/{+parent}/firewallEndpoints`

Creates a new FirewallEndpoint in a given organization and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `firewallEndpointId` | `string` | query | No | Required. Id of the requesting object. If auto-generating Id server-side, remove this field and firewall_endpoint_id ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `FirewallEndpoint`

**Response**: `Operation`

```typescript
const res = await networksecurity.firewallEndpoints.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.firewallEndpoints.get`

**GET** `v1/{+name}`

Gets details of a single org Endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |

**Response**: `FirewallEndpoint`

```typescript
const res = await networksecurity.firewallEndpoints.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.firewallEndpoints.list`

**GET** `v1/{+parent}/firewallEndpoints`

Lists FirewallEndpoints in a given organization and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListEndpointsRequest |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListFirewallEndpointsResponse`

```typescript
const res = await networksecurity.firewallEndpoints.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.firewallEndpoints.delete`

**DELETE** `v1/{+name}`

Deletes a single org Endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await networksecurity.firewallEndpoints.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.addressGroups.list`

**GET** `v1/{+parent}/addressGroups`

Lists address groups in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the AddressGroups should be listed, specified in the format `projects/*... |
| `pageSize` | `integer` | query | No | Maximum number of AddressGroups to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListAddressGroupsResponse` Indicates that this is a continuation of a prior `ListAddr... |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If true, allow partial responses for multi-regional Aggregated List requests. |

**Response**: `ListAddressGroupsResponse`

```typescript
const res = await networksecurity.addressGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.addressGroups.patch`

**PATCH** `v1/{+name}`

Updates parameters of an address group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the AddressGroup resource by the update. The ... |

**Request body**: `AddressGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.addressGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.addressGroups.cloneItems`

**POST** `v1/{+addressGroup}:cloneItems`

Clones items from one address group to another.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `addressGroup` | `string` | path | Yes | Required. A name of the AddressGroup to clone items to. Must be in the format `projects|organization/*/locations/{loc... |

**Request body**: `CloneAddressGroupItemsRequest`

**Response**: `Operation`

```typescript
const res = await networksecurity.addressGroups.cloneItems({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.addressGroups.create`

**POST** `v1/{+parent}/addressGroups`

Creates a new address group in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the AddressGroup. Must be in the format `projects/*/locations/{location}`. |
| `addressGroupId` | `string` | query | No | Required. Short name of the AddressGroup resource to be created. This value should be 1-63 characters long, containin... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `AddressGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.addressGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.addressGroups.removeItems`

**POST** `v1/{+addressGroup}:removeItems`

Removes items from an address group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `addressGroup` | `string` | path | Yes | Required. A name of the AddressGroup to remove items from. Must be in the format `projects|organization/*/locations/{... |

**Request body**: `RemoveAddressGroupItemsRequest`

**Response**: `Operation`

```typescript
const res = await networksecurity.addressGroups.removeItems({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.addressGroups.listReferences`

**GET** `v1/{+addressGroup}:listReferences`

Lists references of an address group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `addressGroup` | `string` | path | Yes | Required. A name of the AddressGroup to clone items to. Must be in the format `projects|organization/*/locations/{loc... |
| `pageSize` | `integer` | query | No | The maximum number of references to return. If unspecified, server will pick an appropriate default. Server may retur... |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListAddressGroupReferencesResponse`

```typescript
const res = await networksecurity.addressGroups.listReferences({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.addressGroups.delete`

**DELETE** `v1/{+name}`

Deletes an address group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the AddressGroup to delete. Must be in the format `projects/*/locations/{location}/addressGroups/*`. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await networksecurity.addressGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.addressGroups.get`

**GET** `v1/{+name}`

Gets details of a single address group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the AddressGroup to get. Must be in the format `projects/*/locations/{location}/addressGroups/*`. |

**Response**: `AddressGroup`

```typescript
const res = await networksecurity.addressGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.addressGroups.addItems`

**POST** `v1/{+addressGroup}:addItems`

Adds items to an address group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `addressGroup` | `string` | path | Yes | Required. A name of the AddressGroup to add items to. Must be in the format `projects|organization/*/locations/{locat... |

**Request body**: `AddAddressGroupItemsRequest`

**Response**: `Operation`

```typescript
const res = await networksecurity.addressGroups.addItems({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await networksecurity.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.operations.list`

**GET** `v1/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `ListOperationsResponse`

```typescript
const res = await networksecurity.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await networksecurity.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.organizations.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await networksecurity.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.list`

**GET** `v1/{+name}/locations`

Lists information about the supported locations for this service. This method can be called in two ways: * **List all public locations:** Use the path `GET /v1/locations`. * **List project-visible locations:** Use the path `GET /v1/projects/{project_id}/locations`. This may include public locations as well as private or other locations specifically visible to the project.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource that owns the locations collection, if applicable. |
| `extraLocationTypes` | `string` | query | No | Optional. Do not use this field. It is unsupported and is ignored unless explicitly documented otherwise. This is pri... |
| `filter` | `string` | query | No | A filter to narrow down results to a preferred subset. The filtering language accepts strings like `"displayName=toky... |
| `pageSize` | `integer` | query | No | The maximum number of results to return. If not set, the service selects a default. |
| `pageToken` | `string` | query | No | A page token received from the `next_page_token` field in the response. Send that page token to receive the subsequen... |

**Response**: `ListLocationsResponse`

```typescript
const res = await networksecurity.locations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.get`

**GET** `v1/{+name}`

Gets information about a location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Resource name for the location. |

**Response**: `Location`

```typescript
const res = await networksecurity.locations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringEndpointGroupAssociations.patch`

**PATCH** `v1/{+name}`

Updates an association. See https://google.aip.dev/134.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The resource name of this endpoint group association, for example: `projects/123456789/locatio... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Fields are specified relative to the association (e.g. `description`; *not* `... |

**Request body**: `MirroringEndpointGroupAssociation`

**Response**: `Operation`

```typescript
const res = await networksecurity.mirroringEndpointGroupAssociations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringEndpointGroupAssociations.delete`

**DELETE** `v1/{+name}`

Deletes an association. See https://google.aip.dev/135.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The association to delete. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Response**: `Operation`

```typescript
const res = await networksecurity.mirroringEndpointGroupAssociations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringEndpointGroupAssociations.list`

**GET** `v1/{+parent}/mirroringEndpointGroupAssociations`

Lists associations in a given project and location. See https://google.aip.dev/132.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of associations. Example: `projects/123456789/locations/global`. See... |
| `filter` | `string` | query | No | Optional. Filter expression. See https://google.aip.dev/160#filtering for more details. |
| `orderBy` | `string` | query | No | Optional. Sort expression. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListMirroringEndpointGroups` call. Provide this to retrieve the sub... |

**Response**: `ListMirroringEndpointGroupAssociationsResponse`

```typescript
const res = await networksecurity.mirroringEndpointGroupAssociations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringEndpointGroupAssociations.get`

**GET** `v1/{+name}`

Gets a specific association. See https://google.aip.dev/131.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the association to retrieve. Format: projects/{project}/locations/{location}/mirroringEndpointG... |

**Response**: `MirroringEndpointGroupAssociation`

```typescript
const res = await networksecurity.mirroringEndpointGroupAssociations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringEndpointGroupAssociations.create`

**POST** `v1/{+parent}/mirroringEndpointGroupAssociations`

Creates an association in a given project and location. See https://google.aip.dev/133.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this association will be created. Format: projects/{project}/locations/{location} |
| `mirroringEndpointGroupAssociationId` | `string` | query | No | Optional. The ID to use for the new association, which will become the final component of the endpoint group's resour... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Request body**: `MirroringEndpointGroupAssociation`

**Response**: `Operation`

```typescript
const res = await networksecurity.mirroringEndpointGroupAssociations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.serverTlsPolicies.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await networksecurity.serverTlsPolicies.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.serverTlsPolicies.list`

**GET** `v1/{+parent}/serverTlsPolicies`

Lists ServerTlsPolicies in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the ServerTlsPolicies should be listed, specified in the format `projec... |
| `pageSize` | `integer` | query | No | Maximum number of ServerTlsPolicies to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListServerTlsPoliciesResponse` Indicates that this is a continuation of a prior `List... |
| `returnPartialSuccess` | `boolean` | query | No | Optional. Setting this field to `true` will opt the request into returning the resources that are reachable, and into... |

**Response**: `ListServerTlsPoliciesResponse`

```typescript
const res = await networksecurity.serverTlsPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.serverTlsPolicies.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single ServerTlsPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the ServerTlsPolicy resource. It matches the pattern `projects/*/locations/{location}/serverTlsPoli... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the ServerTlsPolicy resource by the update. T... |

**Request body**: `ServerTlsPolicy`

**Response**: `Operation`

```typescript
const res = await networksecurity.serverTlsPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.serverTlsPolicies.create`

**POST** `v1/{+parent}/serverTlsPolicies`

Creates a new ServerTlsPolicy in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the ServerTlsPolicy. Must be in the format `projects/*/locations/{location}`. |
| `serverTlsPolicyId` | `string` | query | No | Required. Short name of the ServerTlsPolicy resource to be created. This value should be 1-63 characters long, contai... |

**Request body**: `ServerTlsPolicy`

**Response**: `Operation`

```typescript
const res = await networksecurity.serverTlsPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.serverTlsPolicies.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await networksecurity.serverTlsPolicies.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.serverTlsPolicies.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await networksecurity.serverTlsPolicies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.serverTlsPolicies.get`

**GET** `v1/{+name}`

Gets details of a single ServerTlsPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the ServerTlsPolicy to get. Must be in the format `projects/*/locations/{location}/serverTlsPolic... |

**Response**: `ServerTlsPolicy`

```typescript
const res = await networksecurity.serverTlsPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.serverTlsPolicies.delete`

**DELETE** `v1/{+name}`

Deletes a single ServerTlsPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the ServerTlsPolicy to delete. Must be in the format `projects/*/locations/{location}/serverTlsPo... |

**Response**: `Operation`

```typescript
const res = await networksecurity.serverTlsPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authzPolicies.get`

**GET** `v1/{+name}`

Gets details of a single AuthzPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the `AuthzPolicy` resource to get. Must be in the format `projects/{project}/locations/{location}... |

**Response**: `AuthzPolicy`

```typescript
const res = await networksecurity.authzPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authzPolicies.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await networksecurity.authzPolicies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authzPolicies.delete`

**DELETE** `v1/{+name}`

Deletes a single AuthzPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the `AuthzPolicy` resource to delete. Must be in the format `projects/{project}/locations/{loca... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await networksecurity.authzPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authzPolicies.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await networksecurity.authzPolicies.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authzPolicies.list`

**GET** `v1/{+parent}/authzPolicies`

Lists AuthzPolicies in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the `AuthzPolicy` resources are listed, specified in the following form... |
| `filter` | `string` | query | No | Optional. Filtering results. |
| `orderBy` | `string` | query | No | Optional. Hint for how to order the results. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. The server might return fewer items than requested. If unspecified, the server picks a... |
| `pageToken` | `string` | query | No | Optional. A token identifying a page of results that the server returns. |

**Response**: `ListAuthzPoliciesResponse`

```typescript
const res = await networksecurity.authzPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authzPolicies.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await networksecurity.authzPolicies.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authzPolicies.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single AuthzPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Identifier. Name of the `AuthzPolicy` resource in the following format: `projects/{project}/locations/{loca... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Used to specify the fields to be overwritten in the `AuthzPolicy` resource by the update. The fields specif... |

**Request body**: `AuthzPolicy`

**Response**: `Operation`

```typescript
const res = await networksecurity.authzPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authzPolicies.create`

**POST** `v1/{+parent}/authzPolicies`

Creates a new AuthzPolicy in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the `AuthzPolicy` resource. Must be in the format `projects/{project}/locations/{loc... |
| `authzPolicyId` | `string` | query | No | Required. User-provided ID of the `AuthzPolicy` resource to be created. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `AuthzPolicy`

**Response**: `Operation`

```typescript
const res = await networksecurity.authzPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.tlsInspectionPolicies.create`

**POST** `v1/{+parent}/tlsInspectionPolicies`

Creates a new TlsInspectionPolicy in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the TlsInspectionPolicy. Must be in the format `projects/{project}/locations/{locati... |
| `tlsInspectionPolicyId` | `string` | query | No | Required. Short name of the TlsInspectionPolicy resource to be created. This value should be 1-63 characters long, co... |

**Request body**: `TlsInspectionPolicy`

**Response**: `Operation`

```typescript
const res = await networksecurity.tlsInspectionPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.tlsInspectionPolicies.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single TlsInspectionPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. Name is of the form projects/{project}/locations/{location}/tlsInspectionPolicies/{tl... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the TlsInspectionPolicy resource by the updat... |

**Request body**: `TlsInspectionPolicy`

**Response**: `Operation`

```typescript
const res = await networksecurity.tlsInspectionPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.tlsInspectionPolicies.delete`

**DELETE** `v1/{+name}`

Deletes a single TlsInspectionPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the TlsInspectionPolicy to delete. Must be in the format `projects/{project}/locations/{location}... |
| `force` | `boolean` | query | No | If set to true, any rules for this TlsInspectionPolicy will also be deleted. (Otherwise, the request will only work i... |

**Response**: `Operation`

```typescript
const res = await networksecurity.tlsInspectionPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.tlsInspectionPolicies.list`

**GET** `v1/{+parent}/tlsInspectionPolicies`

Lists TlsInspectionPolicies in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the TlsInspectionPolicies should be listed, specified in the format `pr... |
| `pageSize` | `integer` | query | No | Maximum number of TlsInspectionPolicies to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last 'ListTlsInspectionPoliciesResponse' Indicates that this is a continuation of a prior '... |

**Response**: `ListTlsInspectionPoliciesResponse`

```typescript
const res = await networksecurity.tlsInspectionPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.tlsInspectionPolicies.get`

**GET** `v1/{+name}`

Gets details of a single TlsInspectionPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the TlsInspectionPolicy to get. Must be in the format `projects/{project}/locations/{location}/tl... |

**Response**: `TlsInspectionPolicy`

```typescript
const res = await networksecurity.tlsInspectionPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.urlLists.create`

**POST** `v1/{+parent}/urlLists`

Creates a new UrlList in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the UrlList. Must be in the format `projects/*/locations/{location}`. |
| `urlListId` | `string` | query | No | Required. Short name of the UrlList resource to be created. This value should be 1-63 characters long, containing onl... |

**Request body**: `UrlList`

**Response**: `Operation`

```typescript
const res = await networksecurity.urlLists.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.urlLists.delete`

**DELETE** `v1/{+name}`

Deletes a single UrlList.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the UrlList to delete. Must be in the format `projects/*/locations/{location}/urlLists/*`. |

**Response**: `Operation`

```typescript
const res = await networksecurity.urlLists.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.urlLists.list`

**GET** `v1/{+parent}/urlLists`

Lists UrlLists in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the UrlLists should be listed, specified in the format `projects/{proje... |
| `pageSize` | `integer` | query | No | Maximum number of UrlLists to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListUrlListsResponse` Indicates that this is a continuation of a prior `ListUrlLists`... |

**Response**: `ListUrlListsResponse`

```typescript
const res = await networksecurity.urlLists.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.urlLists.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single UrlList.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource provided by the user. Name is of the form projects/{project}/locations/{location}/urlL... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the UrlList resource by the update. The field... |

**Request body**: `UrlList`

**Response**: `Operation`

```typescript
const res = await networksecurity.urlLists.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.urlLists.get`

**GET** `v1/{+name}`

Gets details of a single UrlList.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the UrlList to get. Must be in the format `projects/*/locations/{location}/urlLists/*`. |

**Response**: `UrlList`

```typescript
const res = await networksecurity.urlLists.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.backendAuthenticationConfigs.get`

**GET** `v1/{+name}`

Gets details of a single BackendAuthenticationConfig to BackendAuthenticationConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the BackendAuthenticationConfig to get. Must be in the format `projects/*/locations/{location}/ba... |

**Response**: `BackendAuthenticationConfig`

```typescript
const res = await networksecurity.backendAuthenticationConfigs.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.backendAuthenticationConfigs.list`

**GET** `v1/{+parent}/backendAuthenticationConfigs`

Lists BackendAuthenticationConfigs in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the BackendAuthenticationConfigs should be listed, specified in the for... |
| `pageSize` | `integer` | query | No | Maximum number of BackendAuthenticationConfigs to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListBackendAuthenticationConfigsResponse` Indicates that this is a continuation of a ... |

**Response**: `ListBackendAuthenticationConfigsResponse`

```typescript
const res = await networksecurity.backendAuthenticationConfigs.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.backendAuthenticationConfigs.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single BackendAuthenticationConfig to BackendAuthenticationConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the BackendAuthenticationConfig resource. It matches the pattern `projects/*/locations/{location}/b... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the BackendAuthenticationConfig resource by t... |

**Request body**: `BackendAuthenticationConfig`

**Response**: `Operation`

```typescript
const res = await networksecurity.backendAuthenticationConfigs.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.backendAuthenticationConfigs.create`

**POST** `v1/{+parent}/backendAuthenticationConfigs`

Creates a new BackendAuthenticationConfig in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the BackendAuthenticationConfig. Must be in the format `projects/*/locations/{locati... |
| `backendAuthenticationConfigId` | `string` | query | No | Required. Short name of the BackendAuthenticationConfig resource to be created. This value should be 1-63 characters ... |

**Request body**: `BackendAuthenticationConfig`

**Response**: `Operation`

```typescript
const res = await networksecurity.backendAuthenticationConfigs.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.backendAuthenticationConfigs.delete`

**DELETE** `v1/{+name}`

Deletes a single BackendAuthenticationConfig to BackendAuthenticationConfig.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the BackendAuthenticationConfig to delete. Must be in the format `projects/*/locations/{location}... |
| `etag` | `string` | query | No | Optional. Etag of the resource. If this is provided, it must match the server's etag. |

**Response**: `Operation`

```typescript
const res = await networksecurity.backendAuthenticationConfigs.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringEndpointGroups.get`

**GET** `v1/{+name}`

Gets a specific endpoint group. See https://google.aip.dev/131.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the endpoint group to retrieve. Format: projects/{project}/locations/{location}/mirroringEndpoi... |

**Response**: `MirroringEndpointGroup`

```typescript
const res = await networksecurity.mirroringEndpointGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringEndpointGroups.delete`

**DELETE** `v1/{+name}`

Deletes an endpoint group. See https://google.aip.dev/135.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The endpoint group to delete. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Response**: `Operation`

```typescript
const res = await networksecurity.mirroringEndpointGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringEndpointGroups.patch`

**PATCH** `v1/{+name}`

Updates an endpoint group. See https://google.aip.dev/134.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The resource name of this endpoint group, for example: `projects/123456789/locations/global/mi... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Fields are specified relative to the endpoint group (e.g. `description`; *not... |

**Request body**: `MirroringEndpointGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.mirroringEndpointGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringEndpointGroups.create`

**POST** `v1/{+parent}/mirroringEndpointGroups`

Creates an endpoint group in a given project and location. See https://google.aip.dev/133.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this endpoint group will be created. Format: projects/{project}/locations/{location} |
| `mirroringEndpointGroupId` | `string` | query | No | Required. The ID to use for the endpoint group, which will become the final component of the endpoint group's resourc... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Request body**: `MirroringEndpointGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.mirroringEndpointGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringEndpointGroups.list`

**GET** `v1/{+parent}/mirroringEndpointGroups`

Lists endpoint groups in a given project and location. See https://google.aip.dev/132.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of endpoint groups. Example: `projects/123456789/locations/global`. ... |
| `filter` | `string` | query | No | Optional. Filter expression. See https://google.aip.dev/160#filtering for more details. |
| `orderBy` | `string` | query | No | Optional. Sort expression. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListMirroringEndpointGroups` call. Provide this to retrieve the sub... |

**Response**: `ListMirroringEndpointGroupsResponse`

```typescript
const res = await networksecurity.mirroringEndpointGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptDeployments.get`

**GET** `v1/{+name}`

Gets a specific deployment. See https://google.aip.dev/131.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment to retrieve. Format: projects/{project}/locations/{location}/interceptDeployment... |

**Response**: `InterceptDeployment`

```typescript
const res = await networksecurity.interceptDeployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptDeployments.list`

**GET** `v1/{+parent}/interceptDeployments`

Lists deployments in a given project and location. See https://google.aip.dev/132.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of deployments. Example: `projects/123456789/locations/us-central1-a... |
| `filter` | `string` | query | No | Optional. Filter expression. See https://google.aip.dev/160#filtering for more details. |
| `orderBy` | `string` | query | No | Optional. Sort expression. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListInterceptDeployments` call. Provide this to retrieve the subseq... |

**Response**: `ListInterceptDeploymentsResponse`

```typescript
const res = await networksecurity.interceptDeployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptDeployments.patch`

**PATCH** `v1/{+name}`

Updates a deployment. See https://google.aip.dev/134.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The resource name of this deployment, for example: `projects/123456789/locations/us-central1-a... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Fields are specified relative to the deployment (e.g. `description`; *not* `i... |

**Request body**: `InterceptDeployment`

**Response**: `Operation`

```typescript
const res = await networksecurity.interceptDeployments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptDeployments.delete`

**DELETE** `v1/{+name}`

Deletes a deployment. See https://google.aip.dev/135.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Response**: `Operation`

```typescript
const res = await networksecurity.interceptDeployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptDeployments.create`

**POST** `v1/{+parent}/interceptDeployments`

Creates a deployment in a given project and location. See https://google.aip.dev/133.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this deployment will be created. Format: projects/{project}/locations/{location} |
| `interceptDeploymentId` | `string` | query | No | Required. The ID to use for the new deployment, which will become the final component of the deployment's resource name. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Request body**: `InterceptDeployment`

**Response**: `Operation`

```typescript
const res = await networksecurity.interceptDeployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.addressGroups.delete`

**DELETE** `v1/{+name}`

Deletes a single address group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the AddressGroup to delete. Must be in the format `projects/*/locations/{location}/addressGroups/*`. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await networksecurity.addressGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.addressGroups.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single address group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/addressGroups/`. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the AddressGroup resource by the update. The ... |

**Request body**: `AddressGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.addressGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.addressGroups.cloneItems`

**POST** `v1/{+addressGroup}:cloneItems`

Clones items from one address group to another.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `addressGroup` | `string` | path | Yes | Required. A name of the AddressGroup to clone items to. Must be in the format `projects|organization/*/locations/{loc... |

**Request body**: `CloneAddressGroupItemsRequest`

**Response**: `Operation`

```typescript
const res = await networksecurity.addressGroups.cloneItems({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.addressGroups.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await networksecurity.addressGroups.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.addressGroups.listReferences`

**GET** `v1/{+addressGroup}:listReferences`

Lists references of an address group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `addressGroup` | `string` | path | Yes | Required. A name of the AddressGroup to clone items to. Must be in the format `projects|organization/*/locations/{loc... |
| `pageSize` | `integer` | query | No | The maximum number of references to return. If unspecified, server will pick an appropriate default. Server may retur... |
| `pageToken` | `string` | query | No | The next_page_token value returned from a previous List request, if any. |

**Response**: `ListAddressGroupReferencesResponse`

```typescript
const res = await networksecurity.addressGroups.listReferences({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.addressGroups.create`

**POST** `v1/{+parent}/addressGroups`

Creates a new address group in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the AddressGroup. Must be in the format `projects/*/locations/{location}`. |
| `addressGroupId` | `string` | query | No | Required. Short name of the AddressGroup resource to be created. This value should be 1-63 characters long, containin... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `AddressGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.addressGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.addressGroups.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await networksecurity.addressGroups.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.addressGroups.addItems`

**POST** `v1/{+addressGroup}:addItems`

Adds items to an address group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `addressGroup` | `string` | path | Yes | Required. A name of the AddressGroup to add items to. Must be in the format `projects|organization/*/locations/{locat... |

**Request body**: `AddAddressGroupItemsRequest`

**Response**: `Operation`

```typescript
const res = await networksecurity.addressGroups.addItems({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.addressGroups.removeItems`

**POST** `v1/{+addressGroup}:removeItems`

Removes items from an address group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `addressGroup` | `string` | path | Yes | Required. A name of the AddressGroup to remove items from. Must be in the format `projects|organization/*/locations/{... |

**Request body**: `RemoveAddressGroupItemsRequest`

**Response**: `Operation`

```typescript
const res = await networksecurity.addressGroups.removeItems({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.addressGroups.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await networksecurity.addressGroups.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.addressGroups.get`

**GET** `v1/{+name}`

Gets details of a single address group.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the AddressGroup to get. Must be in the format `projects/*/locations/{location}/addressGroups/*`. |

**Response**: `AddressGroup`

```typescript
const res = await networksecurity.addressGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.addressGroups.list`

**GET** `v1/{+parent}/addressGroups`

Lists address groups in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the AddressGroups should be listed, specified in the format `projects/*... |
| `pageSize` | `integer` | query | No | Maximum number of AddressGroups to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListAddressGroupsResponse` Indicates that this is a continuation of a prior `ListAddr... |
| `returnPartialSuccess` | `boolean` | query | No | Optional. If true, allow partial responses for multi-regional Aggregated List requests. |

**Response**: `ListAddressGroupsResponse`

```typescript
const res = await networksecurity.addressGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.firewallEndpointAssociations.create`

**POST** `v1/{+parent}/firewallEndpointAssociations`

Creates a new FirewallEndpointAssociation in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `firewallEndpointAssociationId` | `string` | query | No | Optional. Id of the requesting object. If auto-generating Id server-side, remove this field and firewall_endpoint_ass... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `FirewallEndpointAssociation`

**Response**: `Operation`

```typescript
const res = await networksecurity.firewallEndpointAssociations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.firewallEndpointAssociations.delete`

**DELETE** `v1/{+name}`

Deletes a single FirewallEndpointAssociation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await networksecurity.firewallEndpointAssociations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.firewallEndpointAssociations.list`

**GET** `v1/{+parent}/firewallEndpointAssociations`

Lists Associations in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListAssociationsRequest |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListFirewallEndpointAssociationsResponse`

```typescript
const res = await networksecurity.firewallEndpointAssociations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.firewallEndpointAssociations.get`

**GET** `v1/{+name}`

Gets details of a single FirewallEndpointAssociation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |

**Response**: `FirewallEndpointAssociation`

```typescript
const res = await networksecurity.firewallEndpointAssociations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.firewallEndpointAssociations.patch`

**PATCH** `v1/{+name}`

Update a single FirewallEndpointAssociation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. name of resource |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Association resource by the update. The f... |

**Request body**: `FirewallEndpointAssociation`

**Response**: `Operation`

```typescript
const res = await networksecurity.firewallEndpointAssociations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptEndpointGroupAssociations.delete`

**DELETE** `v1/{+name}`

Deletes an association. See https://google.aip.dev/135.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The association to delete. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Response**: `Operation`

```typescript
const res = await networksecurity.interceptEndpointGroupAssociations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptEndpointGroupAssociations.get`

**GET** `v1/{+name}`

Gets a specific association. See https://google.aip.dev/131.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the association to retrieve. Format: projects/{project}/locations/{location}/interceptEndpointG... |

**Response**: `InterceptEndpointGroupAssociation`

```typescript
const res = await networksecurity.interceptEndpointGroupAssociations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptEndpointGroupAssociations.list`

**GET** `v1/{+parent}/interceptEndpointGroupAssociations`

Lists associations in a given project and location. See https://google.aip.dev/132.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of associations. Example: `projects/123456789/locations/global`. See... |
| `filter` | `string` | query | No | Optional. Filter expression. See https://google.aip.dev/160#filtering for more details. |
| `orderBy` | `string` | query | No | Optional. Sort expression. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListInterceptEndpointGroups` call. Provide this to retrieve the sub... |

**Response**: `ListInterceptEndpointGroupAssociationsResponse`

```typescript
const res = await networksecurity.interceptEndpointGroupAssociations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptEndpointGroupAssociations.patch`

**PATCH** `v1/{+name}`

Updates an association. See https://google.aip.dev/134.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The resource name of this endpoint group association, for example: `projects/123456789/locatio... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Fields are specified relative to the association (e.g. `description`; *not* `... |

**Request body**: `InterceptEndpointGroupAssociation`

**Response**: `Operation`

```typescript
const res = await networksecurity.interceptEndpointGroupAssociations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptEndpointGroupAssociations.create`

**POST** `v1/{+parent}/interceptEndpointGroupAssociations`

Creates an association in a given project and location. See https://google.aip.dev/133.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this association will be created. Format: projects/{project}/locations/{location} |
| `interceptEndpointGroupAssociationId` | `string` | query | No | Optional. The ID to use for the new association, which will become the final component of the endpoint group's resour... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Request body**: `InterceptEndpointGroupAssociation`

**Response**: `Operation`

```typescript
const res = await networksecurity.interceptEndpointGroupAssociations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authorizationPolicies.list`

**GET** `v1/{+parent}/authorizationPolicies`

Lists AuthorizationPolicies in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the AuthorizationPolicies should be listed, specified in the format `pr... |
| `pageSize` | `integer` | query | No | Maximum number of AuthorizationPolicies to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListAuthorizationPoliciesResponse` Indicates that this is a continuation of a prior `... |

**Response**: `ListAuthorizationPoliciesResponse`

```typescript
const res = await networksecurity.authorizationPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authorizationPolicies.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await networksecurity.authorizationPolicies.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authorizationPolicies.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await networksecurity.authorizationPolicies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authorizationPolicies.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single AuthorizationPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locations/{location}/autho... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the AuthorizationPolicy resource by the updat... |

**Request body**: `AuthorizationPolicy`

**Response**: `Operation`

```typescript
const res = await networksecurity.authorizationPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authorizationPolicies.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await networksecurity.authorizationPolicies.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authorizationPolicies.create`

**POST** `v1/{+parent}/authorizationPolicies`

Creates a new AuthorizationPolicy in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the AuthorizationPolicy. Must be in the format `projects/{project}/locations/{locati... |
| `authorizationPolicyId` | `string` | query | No | Required. Short name of the AuthorizationPolicy resource to be created. This value should be 1-63 characters long, co... |

**Request body**: `AuthorizationPolicy`

**Response**: `Operation`

```typescript
const res = await networksecurity.authorizationPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authorizationPolicies.get`

**GET** `v1/{+name}`

Gets details of a single AuthorizationPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the AuthorizationPolicy to get. Must be in the format `projects/{project}/locations/{location}/au... |

**Response**: `AuthorizationPolicy`

```typescript
const res = await networksecurity.authorizationPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.authorizationPolicies.delete`

**DELETE** `v1/{+name}`

Deletes a single AuthorizationPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the AuthorizationPolicy to delete. Must be in the format `projects/{project}/locations/{location}... |

**Response**: `Operation`

```typescript
const res = await networksecurity.authorizationPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.gatewaySecurityPolicies.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single GatewaySecurityPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the GatewaySecurityPolicy resource by the upd... |

**Request body**: `GatewaySecurityPolicy`

**Response**: `Operation`

```typescript
const res = await networksecurity.gatewaySecurityPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.gatewaySecurityPolicies.create`

**POST** `v1/{+parent}/gatewaySecurityPolicies`

Creates a new GatewaySecurityPolicy in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the GatewaySecurityPolicy. Must be in the format `projects/{project}/locations/{loca... |
| `gatewaySecurityPolicyId` | `string` | query | No | Required. Short name of the GatewaySecurityPolicy resource to be created. This value should be 1-63 characters long, ... |

**Request body**: `GatewaySecurityPolicy`

**Response**: `Operation`

```typescript
const res = await networksecurity.gatewaySecurityPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.gatewaySecurityPolicies.list`

**GET** `v1/{+parent}/gatewaySecurityPolicies`

Lists GatewaySecurityPolicies in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the GatewaySecurityPolicies should be listed, specified in the format `... |
| `pageSize` | `integer` | query | No | Maximum number of GatewaySecurityPolicies to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last 'ListGatewaySecurityPoliciesResponse' Indicates that this is a continuation of a prior... |

**Response**: `ListGatewaySecurityPoliciesResponse`

```typescript
const res = await networksecurity.gatewaySecurityPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.gatewaySecurityPolicies.delete`

**DELETE** `v1/{+name}`

Deletes a single GatewaySecurityPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the GatewaySecurityPolicy to delete. Must be in the format `projects/{project}/locations/{locatio... |

**Response**: `Operation`

```typescript
const res = await networksecurity.gatewaySecurityPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.gatewaySecurityPolicies.get`

**GET** `v1/{+name}`

Gets details of a single GatewaySecurityPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the GatewaySecurityPolicy to get. Must be in the format `projects/{project}/locations/{location}/... |

**Response**: `GatewaySecurityPolicy`

```typescript
const res = await networksecurity.gatewaySecurityPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.gatewaySecurityPolicies.rules.delete`

**DELETE** `v1/{+name}`

Deletes a single GatewaySecurityPolicyRule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the GatewaySecurityPolicyRule to delete. Must be in the format `projects/{project}/locations/{loc... |

**Response**: `Operation`

```typescript
const res = await networksecurity.rules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.gatewaySecurityPolicies.rules.list`

**GET** `v1/{+parent}/rules`

Lists GatewaySecurityPolicyRules in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project, location and GatewaySecurityPolicy from which the GatewaySecurityPolicyRules should be listed,... |
| `pageSize` | `integer` | query | No | Maximum number of GatewaySecurityPolicyRules to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last 'ListGatewaySecurityPolicyRulesResponse' Indicates that this is a continuation of a pr... |

**Response**: `ListGatewaySecurityPolicyRulesResponse`

```typescript
const res = await networksecurity.rules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.gatewaySecurityPolicies.rules.get`

**GET** `v1/{+name}`

Gets details of a single GatewaySecurityPolicyRule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the GatewaySecurityPolicyRule to retrieve. Format: projects/{project}/location/{location}/gatew... |

**Response**: `GatewaySecurityPolicyRule`

```typescript
const res = await networksecurity.rules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.gatewaySecurityPolicies.rules.create`

**POST** `v1/{+parent}/rules`

Creates a new GatewaySecurityPolicy in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent where this rule will be created. Format : projects/{project}/location/{location}/gatewaySecurity... |
| `gatewaySecurityPolicyRuleId` | `string` | query | No | The ID to use for the rule, which will become the final component of the rule's resource name. This value should be 4... |

**Request body**: `GatewaySecurityPolicyRule`

**Response**: `Operation`

```typescript
const res = await networksecurity.rules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.gatewaySecurityPolicies.rules.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single GatewaySecurityPolicyRule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Immutable. Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/g... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the GatewaySecurityPolicy resource by the upd... |

**Request body**: `GatewaySecurityPolicyRule`

**Response**: `Operation`

```typescript
const res = await networksecurity.rules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.dnsThreatDetectors.create`

**POST** `v1/{+parent}/dnsThreatDetectors`

Creates a new DnsThreatDetector in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The value for the parent of the DnsThreatDetector resource. |
| `dnsThreatDetectorId` | `string` | query | No | Optional. The ID of the requesting DnsThreatDetector object. If this field is not supplied, the service generates an ... |

**Request body**: `DnsThreatDetector`

**Response**: `DnsThreatDetector`

```typescript
const res = await networksecurity.dnsThreatDetectors.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.dnsThreatDetectors.list`

**GET** `v1/{+parent}/dnsThreatDetectors`

Lists DnsThreatDetectors in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent value for `ListDnsThreatDetectorsRequest`. |
| `pageSize` | `integer` | query | No | Optional. The requested page size. The server may return fewer items than requested. If unspecified, the server picks... |
| `pageToken` | `string` | query | No | Optional. A page token received from a previous `ListDnsThreatDetectorsRequest` call. Provide this to retrieve the su... |

**Response**: `ListDnsThreatDetectorsResponse`

```typescript
const res = await networksecurity.dnsThreatDetectors.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.dnsThreatDetectors.patch`

**PATCH** `v1/{+name}`

Updates a single DnsThreatDetector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. Name of the DnsThreatDetector resource. |
| `updateMask` | `string` | query | No | Optional. The field mask is used to specify the fields to be overwritten in the DnsThreatDetector resource by the upd... |

**Request body**: `DnsThreatDetector`

**Response**: `DnsThreatDetector`

```typescript
const res = await networksecurity.dnsThreatDetectors.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.dnsThreatDetectors.get`

**GET** `v1/{+name}`

Gets the details of a single DnsThreatDetector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the DnsThreatDetector resource. |

**Response**: `DnsThreatDetector`

```typescript
const res = await networksecurity.dnsThreatDetectors.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.dnsThreatDetectors.delete`

**DELETE** `v1/{+name}`

Deletes a single DnsThreatDetector.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the DnsThreatDetector resource. |

**Response**: `Empty`

```typescript
const res = await networksecurity.dnsThreatDetectors.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.firewallEndpoints.create`

**POST** `v1/{+parent}/firewallEndpoints`

Creates a new FirewallEndpoint in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Value for parent. |
| `firewallEndpointId` | `string` | query | No | Required. Id of the requesting object. If auto-generating Id server-side, remove this field and firewall_endpoint_id ... |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Request body**: `FirewallEndpoint`

**Response**: `Operation`

```typescript
const res = await networksecurity.firewallEndpoints.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.firewallEndpoints.patch`

**PATCH** `v1/{+name}`

Update a single project Endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. Name of resource. |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |
| `updateMask` | `string` | query | No | Required. Field mask is used to specify the fields to be overwritten in the Endpoint resource by the update. The fiel... |

**Request body**: `FirewallEndpoint`

**Response**: `Operation`

```typescript
const res = await networksecurity.firewallEndpoints.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.firewallEndpoints.get`

**GET** `v1/{+name}`

Gets details of a single project Endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |

**Response**: `FirewallEndpoint`

```typescript
const res = await networksecurity.firewallEndpoints.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.firewallEndpoints.delete`

**DELETE** `v1/{+name}`

Deletes a single project Endpoint.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `requestId` | `string` | query | No | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your req... |

**Response**: `Operation`

```typescript
const res = await networksecurity.firewallEndpoints.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.firewallEndpoints.list`

**GET** `v1/{+parent}/firewallEndpoints`

Lists FirewallEndpoints in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. Parent value for ListEndpointsRequest |
| `filter` | `string` | query | No | Optional. Filtering results |
| `orderBy` | `string` | query | No | Hint for how to order the results |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | A token identifying a page of results the server should return. |

**Response**: `ListFirewallEndpointsResponse`

```typescript
const res = await networksecurity.firewallEndpoints.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `Operation`

```typescript
const res = await networksecurity.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.operations.list`

**GET** `v1/{+name}/operations`

Lists operations that match the specified filter in the request. If the server doesn't support this method, it returns `UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation's parent resource. |
| `filter` | `string` | query | No | The standard list filter. |
| `pageSize` | `integer` | query | No | The standard list page size. |
| `pageToken` | `string` | query | No | The standard list page token. |
| `returnPartialSuccess` | `boolean` | query | No | When set to `true`, operations that are reachable are returned as normal, and those that are unreachable are returned... |

**Response**: `ListOperationsResponse`

```typescript
const res = await networksecurity.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Request body**: `CancelOperationRequest`

**Response**: `Empty`

```typescript
const res = await networksecurity.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.operations.delete`

**DELETE** `v1/{+name}`

Deletes a long-running operation. This method indicates that the client is no longer interested in the operation result. It does not cancel the operation. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be deleted. |

**Response**: `Empty`

```typescript
const res = await networksecurity.operations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptDeploymentGroups.list`

**GET** `v1/{+parent}/interceptDeploymentGroups`

Lists deployment groups in a given project and location. See https://google.aip.dev/132.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of deployment groups. Example: `projects/123456789/locations/global`... |
| `filter` | `string` | query | No | Optional. Filter expression. See https://google.aip.dev/160#filtering for more details. |
| `orderBy` | `string` | query | No | Optional. Sort expression. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListInterceptDeploymentGroups` call. Provide this to retrieve the s... |

**Response**: `ListInterceptDeploymentGroupsResponse`

```typescript
const res = await networksecurity.interceptDeploymentGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptDeploymentGroups.delete`

**DELETE** `v1/{+name}`

Deletes a deployment group. See https://google.aip.dev/135.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The deployment group to delete. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Response**: `Operation`

```typescript
const res = await networksecurity.interceptDeploymentGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptDeploymentGroups.create`

**POST** `v1/{+parent}/interceptDeploymentGroups`

Creates a deployment group in a given project and location. See https://google.aip.dev/133.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this deployment group will be created. Format: projects/{project}/locations/{loca... |
| `interceptDeploymentGroupId` | `string` | query | No | Required. The ID to use for the new deployment group, which will become the final component of the deployment group's... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Request body**: `InterceptDeploymentGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.interceptDeploymentGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptDeploymentGroups.get`

**GET** `v1/{+name}`

Gets a specific deployment group. See https://google.aip.dev/131.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment group to retrieve. Format: projects/{project}/locations/{location}/interceptDepl... |

**Response**: `InterceptDeploymentGroup`

```typescript
const res = await networksecurity.interceptDeploymentGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptDeploymentGroups.patch`

**PATCH** `v1/{+name}`

Updates a deployment group. See https://google.aip.dev/134.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The resource name of this deployment group, for example: `projects/123456789/locations/global/... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Fields are specified relative to the deployment group (e.g. `description`; *n... |

**Request body**: `InterceptDeploymentGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.interceptDeploymentGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptEndpointGroups.create`

**POST** `v1/{+parent}/interceptEndpointGroups`

Creates an endpoint group in a given project and location. See https://google.aip.dev/133.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this endpoint group will be created. Format: projects/{project}/locations/{location} |
| `interceptEndpointGroupId` | `string` | query | No | Required. The ID to use for the endpoint group, which will become the final component of the endpoint group's resourc... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Request body**: `InterceptEndpointGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.interceptEndpointGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptEndpointGroups.get`

**GET** `v1/{+name}`

Gets a specific endpoint group. See https://google.aip.dev/131.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the endpoint group to retrieve. Format: projects/{project}/locations/{location}/interceptEndpoi... |

**Response**: `InterceptEndpointGroup`

```typescript
const res = await networksecurity.interceptEndpointGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptEndpointGroups.list`

**GET** `v1/{+parent}/interceptEndpointGroups`

Lists endpoint groups in a given project and location. See https://google.aip.dev/132.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of endpoint groups. Example: `projects/123456789/locations/global`. ... |
| `filter` | `string` | query | No | Optional. Filter expression. See https://google.aip.dev/160#filtering for more details. |
| `orderBy` | `string` | query | No | Optional. Sort expression. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListInterceptEndpointGroups` call. Provide this to retrieve the sub... |

**Response**: `ListInterceptEndpointGroupsResponse`

```typescript
const res = await networksecurity.interceptEndpointGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptEndpointGroups.patch`

**PATCH** `v1/{+name}`

Updates an endpoint group. See https://google.aip.dev/134.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The resource name of this endpoint group, for example: `projects/123456789/locations/global/in... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Fields are specified relative to the endpoint group (e.g. `description`; *not... |

**Request body**: `InterceptEndpointGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.interceptEndpointGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.interceptEndpointGroups.delete`

**DELETE** `v1/{+name}`

Deletes an endpoint group. See https://google.aip.dev/135.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The endpoint group to delete. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Response**: `Operation`

```typescript
const res = await networksecurity.interceptEndpointGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringDeployments.get`

**GET** `v1/{+name}`

Gets a specific deployment. See https://google.aip.dev/131.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment to retrieve. Format: projects/{project}/locations/{location}/mirroringDeployment... |

**Response**: `MirroringDeployment`

```typescript
const res = await networksecurity.mirroringDeployments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringDeployments.delete`

**DELETE** `v1/{+name}`

Deletes a deployment. See https://google.aip.dev/135.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the resource |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Response**: `Operation`

```typescript
const res = await networksecurity.mirroringDeployments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringDeployments.list`

**GET** `v1/{+parent}/mirroringDeployments`

Lists deployments in a given project and location. See https://google.aip.dev/132.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of deployments. Example: `projects/123456789/locations/us-central1-a... |
| `filter` | `string` | query | No | Optional. Filter expression. See https://google.aip.dev/160#filtering for more details. |
| `orderBy` | `string` | query | No | Optional. Sort expression. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListMirroringDeployments` call. Provide this to retrieve the subseq... |

**Response**: `ListMirroringDeploymentsResponse`

```typescript
const res = await networksecurity.mirroringDeployments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringDeployments.patch`

**PATCH** `v1/{+name}`

Updates a deployment. See https://google.aip.dev/134.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The resource name of this deployment, for example: `projects/123456789/locations/us-central1-a... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Fields are specified relative to the deployment (e.g. `description`; *not* `m... |

**Request body**: `MirroringDeployment`

**Response**: `Operation`

```typescript
const res = await networksecurity.mirroringDeployments.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringDeployments.create`

**POST** `v1/{+parent}/mirroringDeployments`

Creates a deployment in a given project and location. See https://google.aip.dev/133.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this deployment will be created. Format: projects/{project}/locations/{location} |
| `mirroringDeploymentId` | `string` | query | No | Required. The ID to use for the new deployment, which will become the final component of the deployment's resource name. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Request body**: `MirroringDeployment`

**Response**: `Operation`

```typescript
const res = await networksecurity.mirroringDeployments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringDeploymentGroups.get`

**GET** `v1/{+name}`

Gets a specific deployment group. See https://google.aip.dev/131.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the deployment group to retrieve. Format: projects/{project}/locations/{location}/mirroringDepl... |

**Response**: `MirroringDeploymentGroup`

```typescript
const res = await networksecurity.mirroringDeploymentGroups.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringDeploymentGroups.patch`

**PATCH** `v1/{+name}`

Updates a deployment group. See https://google.aip.dev/134.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The resource name of this deployment group, for example: `projects/123456789/locations/global/... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. Fields are specified relative to the deployment group (e.g. `description`; *n... |

**Request body**: `MirroringDeploymentGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.mirroringDeploymentGroups.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringDeploymentGroups.list`

**GET** `v1/{+parent}/mirroringDeploymentGroups`

Lists deployment groups in a given project and location. See https://google.aip.dev/132.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent, which owns this collection of deployment groups. Example: `projects/123456789/locations/global`... |
| `filter` | `string` | query | No | Optional. Filter expression. See https://google.aip.dev/160#filtering for more details. |
| `orderBy` | `string` | query | No | Optional. Sort expression. See https://google.aip.dev/132#ordering for more details. |
| `pageSize` | `integer` | query | No | Optional. Requested page size. Server may return fewer items than requested. If unspecified, server will pick an appr... |
| `pageToken` | `string` | query | No | Optional. A page token, received from a previous `ListMirroringDeploymentGroups` call. Provide this to retrieve the s... |

**Response**: `ListMirroringDeploymentGroupsResponse`

```typescript
const res = await networksecurity.mirroringDeploymentGroups.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringDeploymentGroups.delete`

**DELETE** `v1/{+name}`

Deletes a deployment group. See https://google.aip.dev/135.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The deployment group to delete. |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Response**: `Operation`

```typescript
const res = await networksecurity.mirroringDeploymentGroups.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.mirroringDeploymentGroups.create`

**POST** `v1/{+parent}/mirroringDeploymentGroups`

Creates a deployment group in a given project and location. See https://google.aip.dev/133.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource where this deployment group will be created. Format: projects/{project}/locations/{loca... |
| `mirroringDeploymentGroupId` | `string` | query | No | Required. The ID to use for the new deployment group, which will become the final component of the deployment group's... |
| `requestId` | `string` | query | No | Optional. A unique identifier for this request. Must be a UUID4. This request is only idempotent if a `request_id` is... |

**Request body**: `MirroringDeploymentGroup`

**Response**: `Operation`

```typescript
const res = await networksecurity.mirroringDeploymentGroups.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.clientTlsPolicies.list`

**GET** `v1/{+parent}/clientTlsPolicies`

Lists ClientTlsPolicies in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location from which the ClientTlsPolicies should be listed, specified in the format `projec... |
| `pageSize` | `integer` | query | No | Maximum number of ClientTlsPolicies to return per call. |
| `pageToken` | `string` | query | No | The value returned by the last `ListClientTlsPoliciesResponse` Indicates that this is a continuation of a prior `List... |

**Response**: `ListClientTlsPoliciesResponse`

```typescript
const res = await networksecurity.clientTlsPolicies.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.clientTlsPolicies.create`

**POST** `v1/{+parent}/clientTlsPolicies`

Creates a new ClientTlsPolicy in a given project and location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the ClientTlsPolicy. Must be in the format `projects/*/locations/{location}`. |
| `clientTlsPolicyId` | `string` | query | No | Required. Short name of the ClientTlsPolicy resource to be created. This value should be 1-63 characters long, contai... |

**Request body**: `ClientTlsPolicy`

**Response**: `Operation`

```typescript
const res = await networksecurity.clientTlsPolicies.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.clientTlsPolicies.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await networksecurity.clientTlsPolicies.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.clientTlsPolicies.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await networksecurity.clientTlsPolicies.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.clientTlsPolicies.delete`

**DELETE** `v1/{+name}`

Deletes a single ClientTlsPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the ClientTlsPolicy to delete. Must be in the format `projects/*/locations/{location}/clientTlsPo... |

**Response**: `Operation`

```typescript
const res = await networksecurity.clientTlsPolicies.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.clientTlsPolicies.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await networksecurity.clientTlsPolicies.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.clientTlsPolicies.get`

**GET** `v1/{+name}`

Gets details of a single ClientTlsPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. A name of the ClientTlsPolicy to get. Must be in the format `projects/*/locations/{location}/clientTlsPolic... |

**Response**: `ClientTlsPolicy`

```typescript
const res = await networksecurity.clientTlsPolicies.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `networksecurity.projects.locations.clientTlsPolicies.patch`

**PATCH** `v1/{+name}`

Updates the parameters of a single ClientTlsPolicy.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Name of the ClientTlsPolicy resource. It matches the pattern `projects/{project}/locations/{location}/clien... |
| `updateMask` | `string` | query | No | Optional. Field mask is used to specify the fields to be overwritten in the ClientTlsPolicy resource by the update. T... |

**Request body**: `ClientTlsPolicy`

**Response**: `Operation`

```typescript
const res = await networksecurity.clientTlsPolicies.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `AddAddressGroupItemsRequest`

Request used by the AddAddressGroupItems method.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<string>` | Required. List of items to add. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `AddressGroup`

AddressGroup is a resource that specifies how a collection of IP/DNS used in Firewall Policy.

| Property | Type | Description |
|----------|------|-------------|
| `capacity` | `integer` | Required. Capacity of the Address Group |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. Free-text description of the resource. |
| `items` | `array<string>` | Optional. List of items. |
| `labels` | `object` | Optional. Set of label tags associated with the AddressGroup resource. |
| `name` | `string` | Required. Name of the AddressGroup resource. It matches pattern `projects/*/locations/{location}/... |
| `purpose` | `array<string>` | Optional. List of supported purposes of the Address Group. |
| `selfLink` | `string` | Output only. Server-defined fully-qualified URL for this resource. |
| `type` | `string` | Required. The type of the Address Group. Possible values are "IPv4" or "IPV6". |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `AntivirusOverride`

Defines what action to take for antivirus threats per protocol.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Required. Threat action override. For some threat types, only a subset of actions applies. |
| `protocol` | `string` | Required. Protocol to match. |

### `AuthorizationPolicy`

AuthorizationPolicy is a resource that specifies how a server should authorize incoming connections. This resource in itself does not change the configuration unless it's attached to a target https proxy or endpoint config selector resource.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Required. The action to take when a rule match is found. Possible values are "ALLOW" or "DENY". |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. Free-text description of the resource. |
| `labels` | `object` | Optional. Set of label tags associated with the AuthorizationPolicy resource. |
| `name` | `string` | Required. Name of the AuthorizationPolicy resource. It matches pattern `projects/{project}/locati... |
| `rules` | `array<Rule>` | Optional. List of rules to match. Note that at least one of the rules must match in order for the... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `AuthzPolicy`

`AuthzPolicy` is a resource that allows to forward traffic to a callout backend designed to scan the traffic for security purposes.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Required. Can be one of `ALLOW`, `DENY`, `CUSTOM`. When the action is `CUSTOM`, `customProvider` ... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `customProvider` | `AuthzPolicyCustomProvider` | Optional. Required if the action is `CUSTOM`. Allows delegating authorization decisions to Cloud ... |
| `description` | `string` | Optional. A human-readable description of the resource. |
| `httpRules` | `array<AuthzPolicyAuthzRule>` | Optional. A list of authorization HTTP rules to match against the incoming request. A policy matc... |
| `labels` | `object` | Optional. Set of labels associated with the `AuthzPolicy` resource. The format must comply with [... |
| `name` | `string` | Required. Identifier. Name of the `AuthzPolicy` resource in the following format: `projects/{proj... |
| `target` | `AuthzPolicyTarget` | Required. Specifies the set of resources to which this policy should be applied to. |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `AuthzPolicyAuthzRule`

Conditions to match against the incoming request.

| Property | Type | Description |
|----------|------|-------------|
| `from` | `AuthzPolicyAuthzRuleFrom` | Optional. Describes properties of a source of a request. |
| `to` | `AuthzPolicyAuthzRuleTo` | Optional. Describes properties of a target of a request. |
| `when` | `string` | Optional. CEL expression that describes the conditions to be satisfied for the action. The result... |

### `AuthzPolicyAuthzRuleFrom`

Describes properties of one or more sources of a request.

| Property | Type | Description |
|----------|------|-------------|
| `notSources` | `array<AuthzPolicyAuthzRuleFromRequestSource>` | Optional. Describes the negated properties of request sources. Matches requests from sources that... |
| `sources` | `array<AuthzPolicyAuthzRuleFromRequestSource>` | Optional. Describes the properties of a request's sources. At least one of sources or notSources ... |

### `AuthzPolicyAuthzRuleFromRequestSource`

Describes the properties of a single source.

| Property | Type | Description |
|----------|------|-------------|
| `ipBlocks` | `array<AuthzPolicyAuthzRuleIpBlock>` | Optional. A list of IP addresses or IP address ranges to match against the source IP address of t... |
| `principals` | `array<AuthzPolicyAuthzRulePrincipal>` | Optional. A list of identities derived from the client's certificate. This field will not match o... |
| `resources` | `array<AuthzPolicyAuthzRuleRequestResource>` | Optional. A list of resources to match against the resource of the source VM of a request. Limite... |

### `AuthzPolicyAuthzRuleHeaderMatch`

Determines how a HTTP header should be matched.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Optional. Specifies the name of the header in the request. |
| `value` | `AuthzPolicyAuthzRuleStringMatch` | Optional. Specifies how the header match will be performed. |

### `AuthzPolicyAuthzRuleIpBlock`

Represents a range of IP Addresses.

| Property | Type | Description |
|----------|------|-------------|
| `length` | `integer` | Required. The length of the address range. |
| `prefix` | `string` | Required. The address prefix. |

### `AuthzPolicyAuthzRulePrincipal`

Describes the properties of a principal to be matched against.

| Property | Type | Description |
|----------|------|-------------|
| `principal` | `AuthzPolicyAuthzRuleStringMatch` | Required. A non-empty string whose value is matched against the principal value based on the prin... |
| `principalSelector` | `string` | Optional. An enum to decide what principal value the principal rule will match against. If not sp... |

### `AuthzPolicyAuthzRuleRequestResource`

Describes the properties of a client VM resource accessing the internal application load balancers.

| Property | Type | Description |
|----------|------|-------------|
| `iamServiceAccount` | `AuthzPolicyAuthzRuleStringMatch` | Optional. An IAM service account to match against the source service account of the VM sending th... |
| `tagValueIdSet` | `AuthzPolicyAuthzRuleRequestResourceTagValueIdSet` | Optional. A list of resource tag value permanent IDs to match against the resource manager tags v... |

### `AuthzPolicyAuthzRuleRequestResourceTagValueIdSet`

Describes a set of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request.

| Property | Type | Description |
|----------|------|-------------|
| `ids` | `array<string>` | Required. A list of resource tag value permanent IDs to match against the resource manager tags v... |

### `AuthzPolicyAuthzRuleStringMatch`

Determines how a string value should be matched.

| Property | Type | Description |
|----------|------|-------------|
| `contains` | `string` | The input string must have the substring specified here. Note: empty contains match is not allowe... |
| `exact` | `string` | The input string must match exactly the string specified here. Examples: * ``abc`` only matches t... |
| `ignoreCase` | `boolean` | If true, indicates the exact/prefix/suffix/contains matching should be case insensitive. For exam... |
| `prefix` | `string` | The input string must have the prefix specified here. Note: empty prefix is not allowed, please u... |
| `suffix` | `string` | The input string must have the suffix specified here. Note: empty prefix is not allowed, please u... |

### `AuthzPolicyAuthzRuleTo`

Describes properties of one or more targets of a request.

| Property | Type | Description |
|----------|------|-------------|
| `notOperations` | `array<AuthzPolicyAuthzRuleToRequestOperation>` | Optional. Describes the negated properties of the targets of a request. Matches requests for oper... |
| `operations` | `array<AuthzPolicyAuthzRuleToRequestOperation>` | Optional. Describes properties of one or more targets of a request. At least one of operations or... |

### `AuthzPolicyAuthzRuleToRequestOperation`

Describes properties of one or more targets of a request.

| Property | Type | Description |
|----------|------|-------------|
| `headerSet` | `AuthzPolicyAuthzRuleToRequestOperationHeaderSet` | Optional. A list of headers to match against in http header. |
| `hosts` | `array<AuthzPolicyAuthzRuleStringMatch>` | Optional. A list of HTTP Hosts to match against. The match can be one of exact, prefix, suffix, o... |
| `methods` | `array<string>` | Optional. A list of HTTP methods to match against. Each entry must be a valid HTTP method name (G... |
| `paths` | `array<AuthzPolicyAuthzRuleStringMatch>` | Optional. A list of paths to match against. The match can be one of exact, prefix, suffix, or con... |

### `AuthzPolicyAuthzRuleToRequestOperationHeaderSet`

Describes a set of HTTP headers to match against.

| Property | Type | Description |
|----------|------|-------------|
| `headers` | `array<AuthzPolicyAuthzRuleHeaderMatch>` | Required. A list of headers to match against in http header. The match can be one of exact, prefi... |

### `AuthzPolicyCustomProvider`

Allows delegating authorization decisions to Cloud IAP or to Service Extensions.

| Property | Type | Description |
|----------|------|-------------|
| `authzExtension` | `AuthzPolicyCustomProviderAuthzExtension` | Optional. Delegate authorization decision to user authored Service Extension. Only one of cloudIa... |
| `cloudIap` | `AuthzPolicyCustomProviderCloudIap` | Optional. Delegates authorization decisions to Cloud IAP. Applicable only for managed load balanc... |

### `AuthzPolicyCustomProviderAuthzExtension`

Optional. Delegate authorization decision to user authored extension. Only one of cloudIap or authzExtension can be specified.

| Property | Type | Description |
|----------|------|-------------|
| `resources` | `array<string>` | Required. A list of references to authorization extensions that will be invoked for requests matc... |

### `AuthzPolicyCustomProviderCloudIap`

Optional. Delegates authorization decisions to Cloud IAP. Applicable only for managed load balancers. Enabling Cloud IAP at the AuthzPolicy level is not compatible with Cloud IAP settings in the BackendService. Enabling IAP in both places will result in request failure. Ensure that IAP is enabled in either the AuthzPolicy or the BackendService but not in both places.

### `AuthzPolicyTarget`

Specifies the set of targets to which this policy should be applied to.

| Property | Type | Description |
|----------|------|-------------|
| `loadBalancingScheme` | `string` | Required. All gateways and forwarding rules referenced by this policy and extensions must share t... |
| `resources` | `array<string>` | Required. A list of references to the Forwarding Rules on which this policy will be applied. |

### `BackendAuthenticationConfig`

BackendAuthenticationConfig message groups the TrustConfig together with other settings that control how the load balancer authenticates, and expresses its identity to, the backend: * `trustConfig` is the attached TrustConfig. * `wellKnownRoots` indicates whether the load balance should trust backend server certificates that are issued by public certificate authorities, in addition to certificates trusted by the TrustConfig. * `clientCertificate` is a client certificate that the load balancer uses to express its identity to the backend, if the connection to the backend uses mTLS. You can attach the BackendAuthenticationConfig to the load balancer's BackendService directly determining how that BackendService negotiates TLS.

| Property | Type | Description |
|----------|------|-------------|
| `clientCertificate` | `string` | Optional. A reference to a certificatemanager.googleapis.com.Certificate resource. This is a rela... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. Free-text description of the resource. |
| `etag` | `string` | Output only. Etag of the resource. |
| `labels` | `object` | Set of label tags associated with the resource. |
| `name` | `string` | Required. Name of the BackendAuthenticationConfig resource. It matches the pattern `projects/*/lo... |
| `trustConfig` | `string` | Optional. A reference to a TrustConfig resource from the certificatemanager.googleapis.com namesp... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |
| `wellKnownRoots` | `string` | Well known roots to use for server certificate validation. |

### `CancelOperationRequest`

The request message for Operations.CancelOperation.

### `CertificateProviderInstance`

Specification of a TLS certificate provider instance. Workloads may have one or more CertificateProvider instances (plugins) and one of them is enabled and configured by specifying this message. Workloads use the values from this message to locate and load the CertificateProvider instance configuration.

| Property | Type | Description |
|----------|------|-------------|
| `pluginInstance` | `string` | Required. Plugin instance name, used to locate and load CertificateProvider instance configuratio... |

### `ClientTlsPolicy`

ClientTlsPolicy is a resource that specifies how a client should authenticate connections to backends of a service. This resource itself does not affect configuration unless it is attached to a backend service resource.

| Property | Type | Description |
|----------|------|-------------|
| `clientCertificate` | `GoogleCloudNetworksecurityV1CertificateProvider` | Optional. Defines a mechanism to provision client identity (public and private keys) for peer to ... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. Free-text description of the resource. |
| `labels` | `object` | Optional. Set of label tags associated with the resource. |
| `name` | `string` | Required. Name of the ClientTlsPolicy resource. It matches the pattern `projects/{project}/locati... |
| `serverValidationCa` | `array<ValidationCA>` | Optional. Defines the mechanism to obtain the Certificate Authority certificate to validate the s... |
| `sni` | `string` | Optional. Server Name Indication string to present to the server during TLS handshake. E.g: "secu... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `CloneAddressGroupItemsRequest`

Request used by the CloneAddressGroupItems method.

| Property | Type | Description |
|----------|------|-------------|
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |
| `sourceAddressGroup` | `string` | Required. Source address group to clone items from. |

### `CustomInterceptProfile`

CustomInterceptProfile defines in-band integration behavior (intercept). It is used by firewall rules with an APPLY_SECURITY_PROFILE_GROUP action.

| Property | Type | Description |
|----------|------|-------------|
| `interceptEndpointGroup` | `string` | Required. The target InterceptEndpointGroup. When a firewall rule with this security profile atta... |

### `CustomMirroringProfile`

CustomMirroringProfile defines out-of-band integration behavior (mirroring). It is used by mirroring rules with a MIRROR action.

| Property | Type | Description |
|----------|------|-------------|
| `mirroringEndpointGroup` | `string` | Required. Immutable. The target MirroringEndpointGroup. When a mirroring rule with this security ... |

### `Destination`

Specification of traffic destination attributes.

| Property | Type | Description |
|----------|------|-------------|
| `hosts` | `array<string>` | Required. List of host names to match. Matched against the ":authority" header in http requests. ... |
| `httpHeaderMatch` | `HttpHeaderMatch` | Optional. Match against key:value pair in http header. Provides a flexible match based on HTTP he... |
| `methods` | `array<string>` | Optional. A list of HTTP methods to match. At least one method should match. Should not be set fo... |
| `ports` | `array<integer>` | Required. List of destination ports to match. At least one port should match. |

### `DnsThreatDetector`

A DNS threat detector sends DNS query logs to a _provider_ that then analyzes the logs to identify threat events in the DNS queries. By default, all VPC networks in your projects are included. You can exclude specific networks by supplying `excluded_networks`.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time stamp. |
| `excludedNetworks` | `array<string>` | Optional. A list of network resource names which aren't monitored by this DnsThreatDetector. Exam... |
| `labels` | `object` | Optional. Any labels associated with the DnsThreatDetector, listed as key value pairs. |
| `name` | `string` | Immutable. Identifier. Name of the DnsThreatDetector resource. |
| `provider` | `string` | Required. The provider used for DNS threat analysis. |
| `updateTime` | `string` | Output only. Update time stamp. |

### `Empty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `Expr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `FirewallEndpoint`

Message describing Endpoint object.

| Property | Type | Description |
|----------|------|-------------|
| `associatedNetworks` | `array<string>` | Output only. List of networks that are associated with this endpoint in the local zone. This is a... |
| `associations` | `array<FirewallEndpointAssociationReference>` | Output only. List of FirewallEndpointAssociations that are associated to this endpoint. An associ... |
| `billingProjectId` | `string` | Required. Project to bill on endpoint uptime usage. |
| `createTime` | `string` | Output only. Create time stamp. |
| `description` | `string` | Optional. Description of the firewall endpoint. Max length 2048 characters. |
| `endpointSettings` | `FirewallEndpointEndpointSettings` | Optional. Settings for the endpoint. |
| `labels` | `object` | Optional. Labels as key value pairs |
| `name` | `string` | Immutable. Identifier. Name of resource. |
| `reconciling` | `boolean` | Output only. Whether reconciling is in progress, recommended per https://google.aip.dev/128. |
| `satisfiesPzi` | `boolean` | Output only. [Output Only] Reserved for future use. |
| `satisfiesPzs` | `boolean` | Output only. [Output Only] Reserved for future use. |
| `state` | `string` | Output only. Current state of the endpoint. |
| `updateTime` | `string` | Output only. Update time stamp |

### `FirewallEndpointAssociation`

Message describing Association object

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time stamp |
| `disabled` | `boolean` | Optional. Whether the association is disabled. True indicates that traffic won't be intercepted |
| `firewallEndpoint` | `string` | Required. The URL of the FirewallEndpoint that is being associated. |
| `labels` | `object` | Optional. Labels as key value pairs |
| `name` | `string` | Immutable. Identifier. name of resource |
| `network` | `string` | Required. The URL of the network that is being associated. |
| `reconciling` | `boolean` | Output only. Whether reconciling is in progress, recommended per https://google.aip.dev/128. |
| `state` | `string` | Output only. Current state of the association. |
| `tlsInspectionPolicy` | `string` | Optional. The URL of the TlsInspectionPolicy that is being associated. |
| `updateTime` | `string` | Output only. Update time stamp |

### `FirewallEndpointAssociationReference`

This is a subset of the FirewallEndpointAssociation message, containing fields to be used by the consumer.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The resource name of the FirewallEndpointAssociation. Format: projects/{project}/loc... |
| `network` | `string` | Output only. The VPC network associated. Format: projects/{project}/global/networks/{name}. |

### `FirewallEndpointEndpointSettings`

Settings for the endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `jumboFramesEnabled` | `boolean` | Optional. Immutable. Indicates whether Jumbo Frames are enabled. Default value is false. |

### `GatewaySecurityPolicy`

The GatewaySecurityPolicy resource contains a collection of GatewaySecurityPolicyRules and associated metadata.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Optional. Free-text description of the resource. |
| `name` | `string` | Required. Name of the resource. Name is of the form projects/{project}/locations/{location}/gatew... |
| `tlsInspectionPolicy` | `string` | Optional. Name of a TLS Inspection Policy resource that defines how TLS inspection will be perfor... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `GatewaySecurityPolicyRule`

The GatewaySecurityPolicyRule resource is in a nested collection within a GatewaySecurityPolicy and represents a traffic matching condition and associated action to perform.

| Property | Type | Description |
|----------|------|-------------|
| `applicationMatcher` | `string` | Optional. CEL expression for matching on L7/application level criteria. |
| `basicProfile` | `string` | Required. Profile which tells what the primitive action should be. |
| `createTime` | `string` | Output only. Time when the rule was created. |
| `description` | `string` | Optional. Free-text description of the resource. |
| `enabled` | `boolean` | Required. Whether the rule is enforced. |
| `name` | `string` | Required. Immutable. Name of the resource. ame is the full resource name so projects/{project}/lo... |
| `priority` | `integer` | Required. Priority of the rule. Lower number corresponds to higher precedence. |
| `sessionMatcher` | `string` | Required. CEL expression for matching on session criteria. |
| `tlsInspectionEnabled` | `boolean` | Optional. Flag to enable TLS inspection of traffic matching on , can only be true if the parent G... |
| `updateTime` | `string` | Output only. Time when the rule was updated. |

### `GoogleCloudNetworksecurityV1CertificateProvider`

Specification of certificate provider. Defines the mechanism to obtain the certificate and private key for peer to peer authentication.

| Property | Type | Description |
|----------|------|-------------|
| `certificateProviderInstance` | `CertificateProviderInstance` | The certificate provider instance specification that will be passed to the data plane, which will... |
| `grpcEndpoint` | `GoogleCloudNetworksecurityV1GrpcEndpoint` | gRPC specific configuration to access the gRPC server to obtain the cert and private key. |

### `GoogleCloudNetworksecurityV1GrpcEndpoint`

Specification of the GRPC Endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `targetUri` | `string` | Required. The target URI of the gRPC endpoint. Only UDS path is supported, and should start with ... |

### `GoogleIamV1AuditConfig`

Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.

| Property | Type | Description |
|----------|------|-------------|
| `auditLogConfigs` | `array<GoogleIamV1AuditLogConfig>` | The configuration for logging of each type of permission. |
| `service` | `string` | Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`... |

### `GoogleIamV1AuditLogConfig`

Provides the configuration for logging a type of permissions. Example: { "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" } ] } This enables 'DATA_READ' and 'DATA_WRITE' logging, while exempting jose@example.com from DATA_READ logging.

| Property | Type | Description |
|----------|------|-------------|
| `exemptedMembers` | `array<string>` | Specifies the identities that do not cause logging for this type of permission. Follows the same ... |
| `logType` | `string` | The log type that this config enables. |

### `GoogleIamV1Binding`

Associates `members`, or principals, with a `role`.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `Expr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
| `members` | `array<string>` | Specifies the principals requesting access for a Google Cloud resource. `members` can have the fo... |
| `role` | `string` | Role that is assigned to the list of `members`, or principals. For example, `roles/viewer`, `role... |

### `GoogleIamV1Policy`

An Identity and Access Management (IAM) policy, which specifies access controls for Google Cloud resources. A `Policy` is a collection of `bindings`. A `binding` binds one or more `members`, or principals, to a single `role`. Principals can be user accounts, service accounts, Google groups, and domains (such as G Suite). A `role` is a named list of permissions; each `role` can be an IAM predefined role or a user-created custom role. For some types of Google Cloud resources, a `binding` can also specify a `condition`, which is a logical expression that allows access to a resource only if the expression evaluates to `true`. A condition can add constraints based on attributes of the request, the resource, or both. To learn which resources support conditions in their IAM policies, see the [IAM documentation](https://cloud.google.com/iam/help/conditions/resource-policies). **JSON example:** ``` { "bindings": [ { "role": "roles/resourcemanager.organizationAdmin", "members": [ "user:mike@example.com", "group:admins@example.com", "domain:google.com", "serviceAccount:my-project-id@appspot.gserviceaccount.com" ] }, { "role": "roles/resourcemanager.organizationViewer", "members": [ "user:eve@example.com" ], "condition": { "title": "expirable access", "description": "Does not grant access after Sep 2020", "expression": "request.time < timestamp('2020-10-01T00:00:00.000Z')", } } ], "etag": "BwWWja0YfJA=", "version": 3 } ``` **YAML example:** ``` bindings: - members: - user:mike@example.com - group:admins@example.com - domain:google.com - serviceAccount:my-project-id@appspot.gserviceaccount.com role: roles/resourcemanager.organizationAdmin - members: - user:eve@example.com role: roles/resourcemanager.organizationViewer condition: title: expirable access description: Does not grant access after Sep 2020 expression: request.time < timestamp('2020-10-01T00:00:00.000Z') etag: BwWWja0YfJA= version: 3 ``` For a description of IAM and its features, see the [IAM documentation](https://cloud.google.com/iam/docs/).

| Property | Type | Description |
|----------|------|-------------|
| `auditConfigs` | `array<GoogleIamV1AuditConfig>` | Specifies cloud audit logging configuration for this policy. |
| `bindings` | `array<GoogleIamV1Binding>` | Associates a list of `members`, or principals, with a `role`. Optionally, may specify a `conditio... |
| `etag` | `string` | `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates o... |
| `version` | `integer` | Specifies the format of the policy. Valid values are `0`, `1`, and `3`. Requests that specify an ... |

### `GoogleIamV1SetIamPolicyRequest`

Request message for `SetIamPolicy` method.

| Property | Type | Description |
|----------|------|-------------|
| `policy` | `GoogleIamV1Policy` | REQUIRED: The complete policy to be applied to the `resource`. The size of the policy is limited ... |
| `updateMask` | `string` | OPTIONAL: A FieldMask specifying which fields of the policy to modify. Only the fields in the mas... |

### `GoogleIamV1TestIamPermissionsRequest`

Request message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | The set of permissions to check for the `resource`. Permissions with wildcards (such as `*` or `s... |

### `GoogleIamV1TestIamPermissionsResponse`

Response message for `TestIamPermissions` method.

| Property | Type | Description |
|----------|------|-------------|
| `permissions` | `array<string>` | A subset of `TestPermissionsRequest.permissions` that the caller is allowed. |

### `HttpHeaderMatch`

Specification of HTTP header match attributes.

| Property | Type | Description |
|----------|------|-------------|
| `headerName` | `string` | Required. The name of the HTTP header to match. For matching against the HTTP request's authority... |
| `regexMatch` | `string` | Required. The value of the header must match the regular expression specified in regexMatch. For ... |

### `InterceptDeployment`

A deployment represents a zonal intercept backend ready to accept GENEVE-encapsulated traffic, e.g. a zonal instance group fronted by an internal passthrough load balancer. Deployments are always part of a global deployment group which represents a global intercept service.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. See https://google.aip.dev/148#timestamps. |
| `description` | `string` | Optional. User-provided description of the deployment. Used as additional context for the deploym... |
| `forwardingRule` | `string` | Required. Immutable. The regional forwarding rule that fronts the interceptors, for example: `pro... |
| `interceptDeploymentGroup` | `string` | Required. Immutable. The deployment group that this deployment is a part of, for example: `projec... |
| `labels` | `object` | Optional. Labels are key/value pairs that help to organize and filter resources. |
| `name` | `string` | Immutable. Identifier. The resource name of this deployment, for example: `projects/123456789/loc... |
| `reconciling` | `boolean` | Output only. The current state of the resource does not match the user's intended state, and the ... |
| `state` | `string` | Output only. The current state of the deployment. See https://google.aip.dev/216. |
| `updateTime` | `string` | Output only. The timestamp when the resource was most recently updated. See https://google.aip.de... |

### `InterceptDeploymentGroup`

A deployment group aggregates many zonal intercept backends (deployments) into a single global intercept service. Consumers can connect this service using an endpoint group.

| Property | Type | Description |
|----------|------|-------------|
| `connectedEndpointGroups` | `array<InterceptDeploymentGroupConnectedEndpointGroup>` | Output only. The list of endpoint groups that are connected to this resource. |
| `createTime` | `string` | Output only. The timestamp when the resource was created. See https://google.aip.dev/148#timestamps. |
| `description` | `string` | Optional. User-provided description of the deployment group. Used as additional context for the d... |
| `labels` | `object` | Optional. Labels are key/value pairs that help to organize and filter resources. |
| `locations` | `array<InterceptLocation>` | Output only. The list of locations where the deployment group is present. |
| `name` | `string` | Immutable. Identifier. The resource name of this deployment group, for example: `projects/1234567... |
| `nestedDeployments` | `array<InterceptDeploymentGroupDeployment>` | Output only. The list of Intercept Deployments that belong to this group. |
| `network` | `string` | Required. Immutable. The network that will be used for all child deployments, for example: `proje... |
| `reconciling` | `boolean` | Output only. The current state of the resource does not match the user's intended state, and the ... |
| `state` | `string` | Output only. The current state of the deployment group. See https://google.aip.dev/216. |
| `updateTime` | `string` | Output only. The timestamp when the resource was most recently updated. See https://google.aip.de... |

### `InterceptDeploymentGroupConnectedEndpointGroup`

An endpoint group connected to this deployment group.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The connected endpoint group's resource name, for example: `projects/123456789/locat... |

### `InterceptDeploymentGroupDeployment`

A deployment belonging to this deployment group.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The name of the Intercept Deployment, in the format: `projects/{project}/locations/{... |
| `state` | `string` | Output only. Most recent known state of the deployment. |

### `InterceptEndpointGroup`

An endpoint group is a consumer frontend for a deployment group (backend). In order to configure intercept for a network, consumers must create: - An association between their network and the endpoint group. - A security profile that points to the endpoint group. - A firewall rule that references the security profile (group).

| Property | Type | Description |
|----------|------|-------------|
| `associations` | `array<InterceptEndpointGroupAssociationDetails>` | Output only. List of associations to this endpoint group. |
| `connectedDeploymentGroup` | `InterceptEndpointGroupConnectedDeploymentGroup` | Output only. Details about the connected deployment group to this endpoint group. |
| `createTime` | `string` | Output only. The timestamp when the resource was created. See https://google.aip.dev/148#timestamps. |
| `description` | `string` | Optional. User-provided description of the endpoint group. Used as additional context for the end... |
| `interceptDeploymentGroup` | `string` | Required. Immutable. The deployment group that this endpoint group is connected to, for example: ... |
| `labels` | `object` | Optional. Labels are key/value pairs that help to organize and filter resources. |
| `name` | `string` | Immutable. Identifier. The resource name of this endpoint group, for example: `projects/123456789... |
| `reconciling` | `boolean` | Output only. The current state of the resource does not match the user's intended state, and the ... |
| `state` | `string` | Output only. The current state of the endpoint group. See https://google.aip.dev/216. |
| `updateTime` | `string` | Output only. The timestamp when the resource was most recently updated. See https://google.aip.de... |

### `InterceptEndpointGroupAssociation`

An endpoint group association represents a link between a network and an endpoint group in the organization. Creating an association creates the networking infrastructure linking the network to the endpoint group, but does not enable intercept by itself. To enable intercept, the user must also create a network firewall policy containing intercept rules and associate it with the network.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. See https://google.aip.dev/148#timestamps. |
| `interceptEndpointGroup` | `string` | Required. Immutable. The endpoint group that this association is connected to, for example: `proj... |
| `labels` | `object` | Optional. Labels are key/value pairs that help to organize and filter resources. |
| `locations` | `array<InterceptLocation>` | Output only. The list of locations where the association is configured. This information is retri... |
| `locationsDetails` | `array<InterceptEndpointGroupAssociationLocationDetails>` | Output only. The list of locations where the association is present. This information is retrieve... |
| `name` | `string` | Immutable. Identifier. The resource name of this endpoint group association, for example: `projec... |
| `network` | `string` | Required. Immutable. The VPC network that is associated. for example: `projects/123456789/global/... |
| `reconciling` | `boolean` | Output only. The current state of the resource does not match the user's intended state, and the ... |
| `state` | `string` | Output only. Current state of the endpoint group association. |
| `updateTime` | `string` | Output only. The timestamp when the resource was most recently updated. See https://google.aip.de... |

### `InterceptEndpointGroupAssociationDetails`

The endpoint group's view of a connected association.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The connected association's resource name, for example: `projects/123456789/location... |
| `network` | `string` | Output only. The associated network, for example: projects/123456789/global/networks/my-network. ... |
| `state` | `string` | Output only. Most recent known state of the association. |

### `InterceptEndpointGroupAssociationLocationDetails`

Contains details about the state of an association in a specific cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Output only. The cloud location, e.g. "us-central1-a" or "asia-south1". |
| `state` | `string` | Output only. The current state of the association in this location. |

### `InterceptEndpointGroupConnectedDeploymentGroup`

The endpoint group's view of a connected deployment group.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<InterceptLocation>` | Output only. The list of locations where the deployment group is present. |
| `name` | `string` | Output only. The connected deployment group's resource name, for example: `projects/123456789/loc... |

### `InterceptLocation`

Details about intercept in a specific cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Output only. The cloud location, e.g. "us-central1-a" or "asia-south1". |
| `state` | `string` | Output only. The current state of the association in this location. |

### `ListAddressGroupReferencesResponse`

Response of the ListAddressGroupReferences method.

| Property | Type | Description |
|----------|------|-------------|
| `addressGroupReferences` | `array<ListAddressGroupReferencesResponseAddressGroupReference>` | A list of references that matches the specified filter in the request. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |

### `ListAddressGroupReferencesResponseAddressGroupReference`

The Reference of AddressGroup.

| Property | Type | Description |
|----------|------|-------------|
| `firewallPolicy` | `string` | FirewallPolicy that is using the Address Group. |
| `rulePriority` | `integer` | Rule priority of the FirewallPolicy that is using the Address Group. |
| `securityPolicy` | `string` | Cloud Armor SecurityPolicy that is using the Address Group. |

### `ListAddressGroupsResponse`

Response returned by the ListAddressGroups method.

| Property | Type | Description |
|----------|------|-------------|
| `addressGroups` | `array<AddressGroup>` | List of AddressGroups resources. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListAuthorizationPoliciesResponse`

Response returned by the ListAuthorizationPolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `authorizationPolicies` | `array<AuthorizationPolicy>` | List of AuthorizationPolicies resources. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |

### `ListAuthzPoliciesResponse`

Message for response to listing `AuthzPolicy` resources.

| Property | Type | Description |
|----------|------|-------------|
| `authzPolicies` | `array<AuthzPolicy>` | The list of `AuthzPolicy` resources. |
| `nextPageToken` | `string` | A token identifying a page of results that the server returns. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListBackendAuthenticationConfigsResponse`

Response returned by the ListBackendAuthenticationConfigs method.

| Property | Type | Description |
|----------|------|-------------|
| `backendAuthenticationConfigs` | `array<BackendAuthenticationConfig>` | List of BackendAuthenticationConfig resources. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListClientTlsPoliciesResponse`

Response returned by the ListClientTlsPolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `clientTlsPolicies` | `array<ClientTlsPolicy>` | List of ClientTlsPolicy resources. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |

### `ListDnsThreatDetectorsResponse`

The response message to requesting a list of DnsThreatDetectors.

| Property | Type | Description |
|----------|------|-------------|
| `dnsThreatDetectors` | `array<DnsThreatDetector>` | The list of DnsThreatDetector resources. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token`, to retrieve the next page. |
| `unreachable` | `array<string>` | Unordered list. Unreachable `DnsThreatDetector` resources. |

### `ListFirewallEndpointAssociationsResponse`

Message for response to listing Associations

| Property | Type | Description |
|----------|------|-------------|
| `firewallEndpointAssociations` | `array<FirewallEndpointAssociation>` | The list of Association |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListFirewallEndpointsResponse`

Message for response to listing Endpoints

| Property | Type | Description |
|----------|------|-------------|
| `firewallEndpoints` | `array<FirewallEndpoint>` | The list of Endpoint |
| `nextPageToken` | `string` | A token identifying a page of results the server should return. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListGatewaySecurityPoliciesResponse`

Response returned by the ListGatewaySecurityPolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `gatewaySecurityPolicies` | `array<GatewaySecurityPolicy>` | List of GatewaySecurityPolicies resources. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then 'next_page_token' is i... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListGatewaySecurityPolicyRulesResponse`

Response returned by the ListGatewaySecurityPolicyRules method.

| Property | Type | Description |
|----------|------|-------------|
| `gatewaySecurityPolicyRules` | `array<GatewaySecurityPolicyRule>` | List of GatewaySecurityPolicyRule resources. |
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then 'next_page_token' is i... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListInterceptDeploymentGroupsResponse`

Response message for ListInterceptDeploymentGroups.

| Property | Type | Description |
|----------|------|-------------|
| `interceptDeploymentGroups` | `array<InterceptDeploymentGroup>` | The deployment groups from the specified parent. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |

### `ListInterceptDeploymentsResponse`

Response message for ListInterceptDeployments.

| Property | Type | Description |
|----------|------|-------------|
| `interceptDeployments` | `array<InterceptDeployment>` | The deployments from the specified parent. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListInterceptEndpointGroupAssociationsResponse`

Response message for ListInterceptEndpointGroupAssociations.

| Property | Type | Description |
|----------|------|-------------|
| `interceptEndpointGroupAssociations` | `array<InterceptEndpointGroupAssociation>` | The associations from the specified parent. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |

### `ListInterceptEndpointGroupsResponse`

Response message for ListInterceptEndpointGroups.

| Property | Type | Description |
|----------|------|-------------|
| `interceptEndpointGroups` | `array<InterceptEndpointGroup>` | The endpoint groups from the specified parent. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |

### `ListLocationsResponse`

The response message for Locations.ListLocations.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<Location>` | A list of locations that matches the specified filter in the request. |
| `nextPageToken` | `string` | The standard List next-page token. |

### `ListMirroringDeploymentGroupsResponse`

Response message for ListMirroringDeploymentGroups.

| Property | Type | Description |
|----------|------|-------------|
| `mirroringDeploymentGroups` | `array<MirroringDeploymentGroup>` | The deployment groups from the specified parent. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |

### `ListMirroringDeploymentsResponse`

Response message for ListMirroringDeployments.

| Property | Type | Description |
|----------|------|-------------|
| `mirroringDeployments` | `array<MirroringDeployment>` | The deployments from the specified parent. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListMirroringEndpointGroupAssociationsResponse`

Response message for ListMirroringEndpointGroupAssociations.

| Property | Type | Description |
|----------|------|-------------|
| `mirroringEndpointGroupAssociations` | `array<MirroringEndpointGroupAssociation>` | The associations from the specified parent. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |

### `ListMirroringEndpointGroupsResponse`

Response message for ListMirroringEndpointGroups.

| Property | Type | Description |
|----------|------|-------------|
| `mirroringEndpointGroups` | `array<MirroringEndpointGroup>` | The endpoint groups from the specified parent. |
| `nextPageToken` | `string` | A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, the... |

### `ListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<Operation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `ListSecurityProfileGroupsResponse`

Response returned by the ListSecurityProfileGroups method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `securityProfileGroups` | `array<SecurityProfileGroup>` | List of SecurityProfileGroups resources. |

### `ListSecurityProfilesResponse`

Response returned by the ListSecurityProfiles method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `securityProfiles` | `array<SecurityProfile>` | List of SecurityProfile resources. |

### `ListServerTlsPoliciesResponse`

Response returned by the ListServerTlsPolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `serverTlsPolicies` | `array<ServerTlsPolicy>` | List of ServerTlsPolicy resources. |
| `unreachable` | `array<string>` | Unreachable resources. Populated when the request opts into `return_partial_success` and reading ... |

### `ListTlsInspectionPoliciesResponse`

Response returned by the ListTlsInspectionPolicies method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then 'next_page_token' is i... |
| `tlsInspectionPolicies` | `array<TlsInspectionPolicy>` | List of TlsInspectionPolicies resources. |
| `unreachable` | `array<string>` | Locations that could not be reached. |

### `ListUrlListsResponse`

Response returned by the ListUrlLists method.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | If there might be more results than those appearing in this response, then `next_page_token` is i... |
| `unreachable` | `array<string>` | Locations that could not be reached. |
| `urlLists` | `array<UrlList>` | List of UrlList resources. |

### `Location`

A resource that represents a Google Cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The friendly name for this location, typically a nearby city name. For example, "Tokyo". |
| `labels` | `object` | Cross-service attributes for the location. For example {"cloud.googleapis.com/region": "us-east1"} |
| `locationId` | `string` | The canonical id for this location. For example: `"us-east1"`. |
| `metadata` | `object` | Service-specific metadata. For example the available capacity at the given location. |
| `name` | `string` | Resource name for the location, which may vary between implementations. For example: `"projects/e... |

### `MTLSPolicy`

Specification of the MTLSPolicy.

| Property | Type | Description |
|----------|------|-------------|
| `clientValidationCa` | `array<ValidationCA>` | Required if the policy is to be used with Traffic Director. For Application Load Balancers it mus... |
| `clientValidationMode` | `string` | When the client presents an invalid certificate or no certificate to the load balancer, the `clie... |
| `clientValidationTrustConfig` | `string` | Reference to the TrustConfig from certificatemanager.googleapis.com namespace. If specified, the ... |

### `MirroringDeployment`

A deployment represents a zonal mirroring backend ready to accept GENEVE-encapsulated replica traffic, e.g. a zonal instance group fronted by an internal passthrough load balancer. Deployments are always part of a global deployment group which represents a global mirroring service.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. See https://google.aip.dev/148#timestamps. |
| `description` | `string` | Optional. User-provided description of the deployment. Used as additional context for the deploym... |
| `forwardingRule` | `string` | Required. Immutable. The regional forwarding rule that fronts the mirroring collectors, for examp... |
| `labels` | `object` | Optional. Labels are key/value pairs that help to organize and filter resources. |
| `mirroringDeploymentGroup` | `string` | Required. Immutable. The deployment group that this deployment is a part of, for example: `projec... |
| `name` | `string` | Immutable. Identifier. The resource name of this deployment, for example: `projects/123456789/loc... |
| `reconciling` | `boolean` | Output only. The current state of the resource does not match the user's intended state, and the ... |
| `state` | `string` | Output only. The current state of the deployment. See https://google.aip.dev/216. |
| `updateTime` | `string` | Output only. The timestamp when the resource was most recently updated. See https://google.aip.de... |

### `MirroringDeploymentGroup`

A deployment group aggregates many zonal mirroring backends (deployments) into a single global mirroring service. Consumers can connect this service using an endpoint group.

| Property | Type | Description |
|----------|------|-------------|
| `connectedEndpointGroups` | `array<MirroringDeploymentGroupConnectedEndpointGroup>` | Output only. The list of endpoint groups that are connected to this resource. |
| `createTime` | `string` | Output only. The timestamp when the resource was created. See https://google.aip.dev/148#timestamps. |
| `description` | `string` | Optional. User-provided description of the deployment group. Used as additional context for the d... |
| `labels` | `object` | Optional. Labels are key/value pairs that help to organize and filter resources. |
| `locations` | `array<MirroringLocation>` | Output only. The list of locations where the deployment group is present. |
| `name` | `string` | Immutable. Identifier. The resource name of this deployment group, for example: `projects/1234567... |
| `nestedDeployments` | `array<MirroringDeploymentGroupDeployment>` | Output only. The list of Mirroring Deployments that belong to this group. |
| `network` | `string` | Required. Immutable. The network that will be used for all child deployments, for example: `proje... |
| `reconciling` | `boolean` | Output only. The current state of the resource does not match the user's intended state, and the ... |
| `state` | `string` | Output only. The current state of the deployment group. See https://google.aip.dev/216. |
| `updateTime` | `string` | Output only. The timestamp when the resource was most recently updated. See https://google.aip.de... |

### `MirroringDeploymentGroupConnectedEndpointGroup`

An endpoint group connected to this deployment group.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The connected endpoint group's resource name, for example: `projects/123456789/locat... |

### `MirroringDeploymentGroupDeployment`

A deployment belonging to this deployment group.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The name of the Mirroring Deployment, in the format: `projects/{project}/locations/{... |
| `state` | `string` | Output only. Most recent known state of the deployment. |

### `MirroringEndpointGroup`

An endpoint group is a consumer frontend for a deployment group (backend). In order to configure mirroring for a network, consumers must create: - An association between their network and the endpoint group. - A security profile that points to the endpoint group. - A mirroring rule that references the security profile (group).

| Property | Type | Description |
|----------|------|-------------|
| `associations` | `array<MirroringEndpointGroupAssociationDetails>` | Output only. List of associations to this endpoint group. |
| `connectedDeploymentGroups` | `array<MirroringEndpointGroupConnectedDeploymentGroup>` | Output only. List of details about the connected deployment groups to this endpoint group. |
| `createTime` | `string` | Output only. The timestamp when the resource was created. See https://google.aip.dev/148#timestamps. |
| `description` | `string` | Optional. User-provided description of the endpoint group. Used as additional context for the end... |
| `labels` | `object` | Optional. Labels are key/value pairs that help to organize and filter resources. |
| `mirroringDeploymentGroup` | `string` | Immutable. The deployment group that this DIRECT endpoint group is connected to, for example: `pr... |
| `name` | `string` | Immutable. Identifier. The resource name of this endpoint group, for example: `projects/123456789... |
| `reconciling` | `boolean` | Output only. The current state of the resource does not match the user's intended state, and the ... |
| `state` | `string` | Output only. The current state of the endpoint group. See https://google.aip.dev/216. |
| `type` | `string` | Immutable. The type of the endpoint group. If left unspecified, defaults to DIRECT. |
| `updateTime` | `string` | Output only. The timestamp when the resource was most recently updated. See https://google.aip.de... |

### `MirroringEndpointGroupAssociation`

An endpoint group association represents a link between a network and an endpoint group in the organization. Creating an association creates the networking infrastructure linking the network to the endpoint group, but does not enable mirroring by itself. To enable mirroring, the user must also create a network firewall policy containing mirroring rules and associate it with the network.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The timestamp when the resource was created. See https://google.aip.dev/148#timestamps. |
| `labels` | `object` | Optional. Labels are key/value pairs that help to organize and filter resources. |
| `locations` | `array<MirroringLocation>` | Output only. The list of locations where the association is configured. This information is retri... |
| `locationsDetails` | `array<MirroringEndpointGroupAssociationLocationDetails>` | Output only. The list of locations where the association is present. This information is retrieve... |
| `mirroringEndpointGroup` | `string` | Immutable. The endpoint group that this association is connected to, for example: `projects/12345... |
| `name` | `string` | Immutable. Identifier. The resource name of this endpoint group association, for example: `projec... |
| `network` | `string` | Immutable. The VPC network that is associated. for example: `projects/123456789/global/networks/m... |
| `reconciling` | `boolean` | Output only. The current state of the resource does not match the user's intended state, and the ... |
| `state` | `string` | Output only. Current state of the endpoint group association. |
| `updateTime` | `string` | Output only. The timestamp when the resource was most recently updated. See https://google.aip.de... |

### `MirroringEndpointGroupAssociationDetails`

The endpoint group's view of a connected association.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Output only. The connected association's resource name, for example: `projects/123456789/location... |
| `network` | `string` | Output only. The associated network, for example: projects/123456789/global/networks/my-network. ... |
| `state` | `string` | Output only. Most recent known state of the association. |

### `MirroringEndpointGroupAssociationLocationDetails`

Contains details about the state of an association in a specific cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Output only. The cloud location, e.g. "us-central1-a" or "asia-south1". |
| `state` | `string` | Output only. The current state of the association in this location. |

### `MirroringEndpointGroupConnectedDeploymentGroup`

The endpoint group's view of a connected deployment group.

| Property | Type | Description |
|----------|------|-------------|
| `locations` | `array<MirroringLocation>` | Output only. The list of locations where the deployment group is present. |
| `name` | `string` | Output only. The connected deployment group's resource name, for example: `projects/123456789/loc... |

### `MirroringLocation`

Details about mirroring in a specific cloud location.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Output only. The cloud location, e.g. "us-central1-a" or "asia-south1". |
| `state` | `string` | Output only. The current state of the association in this location. |

### `Operation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `Status` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `OperationMetadata`

Represents the metadata of the long-running operation.

| Property | Type | Description |
|----------|------|-------------|
| `apiVersion` | `string` | Output only. API version used to start the operation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `requestedCancellation` | `boolean` | Output only. Identifies whether the user has requested cancellation of the operation. Operations ... |
| `statusMessage` | `string` | Output only. Human-readable status of the operation, if any. |
| `target` | `string` | Output only. Server-defined resource path for the target of the operation. |
| `verb` | `string` | Output only. Name of the verb executed by the operation. |

### `RemoveAddressGroupItemsRequest`

Request used by the RemoveAddressGroupItems method.

| Property | Type | Description |
|----------|------|-------------|
| `items` | `array<string>` | Required. List of items to remove. |
| `requestId` | `string` | Optional. An optional request ID to identify requests. Specify a unique request ID so that if you... |

### `Rule`

Specification of rules.

| Property | Type | Description |
|----------|------|-------------|
| `destinations` | `array<Destination>` | Optional. List of attributes for the traffic destination. All of the destinations must match. A d... |
| `sources` | `array<Source>` | Optional. List of attributes for the traffic source. All of the sources must match. A source is a... |

### `SecurityProfile`

SecurityProfile is a resource that defines the behavior for one of many ProfileTypes.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Resource creation timestamp. |
| `customInterceptProfile` | `CustomInterceptProfile` | The custom TPPI configuration for the SecurityProfile. |
| `customMirroringProfile` | `CustomMirroringProfile` | The custom Packet Mirroring v2 configuration for the SecurityProfile. |
| `description` | `string` | Optional. An optional description of the profile. Max length 512 characters. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and may ... |
| `labels` | `object` | Optional. Labels as key value pairs. |
| `name` | `string` | Immutable. Identifier. Name of the SecurityProfile resource. It matches pattern `projects|organiz... |
| `threatPreventionProfile` | `ThreatPreventionProfile` | The threat prevention configuration for the SecurityProfile. |
| `type` | `string` | Immutable. The single ProfileType that the SecurityProfile resource configures. |
| `updateTime` | `string` | Output only. Last resource update timestamp. |
| `urlFilteringProfile` | `UrlFilteringProfile` | The URL filtering configuration for the SecurityProfile. |

### `SecurityProfileGroup`

SecurityProfileGroup is a resource that defines the behavior for various ProfileTypes.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Resource creation timestamp. |
| `customInterceptProfile` | `string` | Optional. Reference to a SecurityProfile with the CustomIntercept configuration. |
| `customMirroringProfile` | `string` | Optional. Reference to a SecurityProfile with the CustomMirroring configuration. |
| `dataPathId` | `string` | Output only. Identifier used by the data-path. Unique within {container, location}. |
| `description` | `string` | Optional. An optional description of the profile group. Max length 2048 characters. |
| `etag` | `string` | Output only. This checksum is computed by the server based on the value of other fields, and may ... |
| `labels` | `object` | Optional. Labels as key value pairs. |
| `name` | `string` | Immutable. Identifier. Name of the SecurityProfileGroup resource. It matches pattern `projects|or... |
| `threatPreventionProfile` | `string` | Optional. Reference to a SecurityProfile with the ThreatPrevention configuration. |
| `updateTime` | `string` | Output only. Last resource update timestamp. |
| `urlFilteringProfile` | `string` | Optional. Reference to a SecurityProfile with the UrlFiltering configuration. |

### `ServerTlsPolicy`

ServerTlsPolicy is a resource that specifies how a server should authenticate incoming requests. This resource itself does not affect configuration unless it is attached to a target HTTPS proxy or endpoint config selector resource. ServerTlsPolicy in the form accepted by Application Load Balancers can be attached only to TargetHttpsProxy with an `EXTERNAL`, `EXTERNAL_MANAGED` or `INTERNAL_MANAGED` load balancing scheme. Traffic Director compatible ServerTlsPolicies can be attached to EndpointPolicy and TargetHttpsProxy with Traffic Director `INTERNAL_SELF_MANAGED` load balancing scheme.

| Property | Type | Description |
|----------|------|-------------|
| `allowOpen` | `boolean` | This field applies only for Traffic Director policies. It is must be set to false for Application... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `description` | `string` | Free-text description of the resource. |
| `labels` | `object` | Set of label tags associated with the resource. |
| `mtlsPolicy` | `MTLSPolicy` | This field is required if the policy is used with Application Load Balancers. This field can be e... |
| `name` | `string` | Required. Name of the ServerTlsPolicy resource. It matches the pattern `projects/*/locations/{loc... |
| `serverCertificate` | `GoogleCloudNetworksecurityV1CertificateProvider` | Optional if policy is to be used with Traffic Director. For Application Load Balancers must be em... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `SeverityOverride`

Defines what action to take for a specific severity match.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Required. Threat action override. |
| `severity` | `string` | Required. Severity level to match. |

### `Source`

Specification of traffic source attributes.

| Property | Type | Description |
|----------|------|-------------|
| `ipBlocks` | `array<string>` | Optional. List of CIDR ranges to match based on source IP address. At least one IP block should m... |
| `principals` | `array<string>` | Optional. List of peer identities to match for authorization. At least one principal should match... |

### `Status`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `ThreatOverride`

Defines what action to take for a specific threat_id match.

| Property | Type | Description |
|----------|------|-------------|
| `action` | `string` | Required. Threat action override. For some threat types, only a subset of actions applies. |
| `threatId` | `string` | Required. Vendor-specific ID of a threat to override. |
| `type` | `string` | Output only. Type of the threat (read only). |

### `ThreatPreventionProfile`

ThreatPreventionProfile defines an action for specific threat signatures or severity levels.

| Property | Type | Description |
|----------|------|-------------|
| `antivirusOverrides` | `array<AntivirusOverride>` | Optional. Configuration for overriding antivirus actions per protocol. |
| `severityOverrides` | `array<SeverityOverride>` | Optional. Configuration for overriding threats actions by severity match. |
| `threatOverrides` | `array<ThreatOverride>` | Optional. Configuration for overriding threats actions by threat_id match. If a threat is matched... |

### `TlsInspectionPolicy`

The TlsInspectionPolicy resource contains references to CA pools in Certificate Authority Service and associated metadata.

| Property | Type | Description |
|----------|------|-------------|
| `caPool` | `string` | Required. A CA pool resource used to issue interception certificates. The CA pool string has a re... |
| `createTime` | `string` | Output only. The timestamp when the resource was created. |
| `customTlsFeatures` | `array<string>` | Optional. List of custom TLS cipher suites selected. This field is valid only if the selected tls... |
| `description` | `string` | Optional. Free-text description of the resource. |
| `excludePublicCaSet` | `boolean` | Optional. If FALSE (the default), use our default set of public CAs in addition to any CAs specif... |
| `minTlsVersion` | `string` | Optional. Minimum TLS version that the firewall should use when negotiating connections with both... |
| `name` | `string` | Required. Name of the resource. Name is of the form projects/{project}/locations/{location}/tlsIn... |
| `tlsFeatureProfile` | `string` | Optional. The selected Profile. If this is not set, then the default value is to allow the broade... |
| `trustConfig` | `string` | Optional. A TrustConfig resource used when making a connection to the TLS server. This is a relat... |
| `updateTime` | `string` | Output only. The timestamp when the resource was updated. |

### `UrlFilter`

A URL filter defines an action to take for some URL match.

| Property | Type | Description |
|----------|------|-------------|
| `filteringAction` | `string` | Required. The action taken when this filter is applied. |
| `priority` | `integer` | Required. The priority of this filter within the URL Filtering Profile. Lower integers indicate h... |
| `urls` | `array<string>` | Required. The list of strings that a URL must match with for this filter to be applied. |

### `UrlFilteringProfile`

UrlFilteringProfile defines filters based on URL.

| Property | Type | Description |
|----------|------|-------------|
| `urlFilters` | `array<UrlFilter>` | Optional. The list of filtering configs in which each config defines an action to take for some U... |

### `UrlList`

UrlList proto helps users to set reusable, independently manageable lists of hosts, host patterns, URLs, URL patterns.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Time when the security policy was created. |
| `description` | `string` | Optional. Free-text description of the resource. |
| `name` | `string` | Required. Name of the resource provided by the user. Name is of the form projects/{project}/locat... |
| `updateTime` | `string` | Output only. Time when the security policy was updated. |
| `values` | `array<string>` | Required. FQDNs and URLs. |

### `ValidationCA`

Specification of ValidationCA. Defines the mechanism to obtain the Certificate Authority certificate to validate the peer certificate.

| Property | Type | Description |
|----------|------|-------------|
| `certificateProviderInstance` | `CertificateProviderInstance` | The certificate provider instance specification that will be passed to the data plane, which will... |
| `grpcEndpoint` | `GoogleCloudNetworksecurityV1GrpcEndpoint` | gRPC specific configuration to access the gRPC server to obtain the CA certificate. |

