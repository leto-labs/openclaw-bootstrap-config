# My Business Lodging API - API Reference

**Version**: `v1` | **Methods**: 3 | **Schemas**: 43

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `mybusinesslodging.locations.getLodging` | GET | `v1/{+name}` | Returns the Lodging of a specific location. |
| `mybusinesslodging.locations.updateLodging` | PATCH | `v1/{+name}` | Updates the Lodging of a specific location. |
| `mybusinesslodging.locations.lodging.getGoogleUpdated` | GET | `v1/{+name}:getGoogleUpdated` | Returns the Google updated Lodging of a specific location. |

### `mybusinesslodging.locations.getLodging`

**GET** `v1/{+name}`

Returns the Lodging of a specific location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Google identifier for this location in the form: `locations/{location_id}/lodging` |
| `readMask` | `string` | query | No | Required. The specific fields to return. Use "*" to include all fields. Repeated field items cannot be individually s... |

**Response**: `Lodging`

```typescript
const res = await mybusinesslodging.locations.getLodging({
  // parameters
});
```

---

### `mybusinesslodging.locations.updateLodging`

**PATCH** `v1/{+name}`

Updates the Lodging of a specific location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Google identifier for this location in the form: `locations/{location_id}/lodging` |
| `updateMask` | `string` | query | No | Required. The specific fields to update. Use "*" to update all fields, which may include unsetting empty fields in th... |

**Request body**: `Lodging`

**Response**: `Lodging`

```typescript
const res = await mybusinesslodging.locations.updateLodging({
  // parameters
});
```

---

### `mybusinesslodging.locations.lodging.getGoogleUpdated`

**GET** `v1/{+name}:getGoogleUpdated`

Returns the Google updated Lodging of a specific location.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. Google identifier for this location in the form: `locations/{location_id}/lodging` |
| `readMask` | `string` | query | No | Required. The specific fields to return. Use "*" to include all fields. Repeated field items cannot be individually s... |

**Response**: `GetGoogleUpdatedLodgingResponse`

```typescript
const res = await mybusinesslodging.lodging.getGoogleUpdated({
  // parameters
});
```

---

## Schemas

### `Accessibility`

Physical adaptations made to the property in consideration of varying levels of human physical ability.

| Property | Type | Description |
|----------|------|-------------|
| `mobilityAccessible` | `boolean` | Mobility accessible. Throughout the property there are physical adaptations to ease the stay of a... |
| `mobilityAccessibleElevator` | `boolean` | Mobility accessible elevator. A lift that transports people from one level to another and is buil... |
| `mobilityAccessibleElevatorException` | `string` | Mobility accessible elevator exception. |
| `mobilityAccessibleException` | `string` | Mobility accessible exception. |
| `mobilityAccessibleParking` | `boolean` | Mobility accessible parking. The presence of a marked, designated area of prescribed size in whic... |
| `mobilityAccessibleParkingException` | `string` | Mobility accessible parking exception. |
| `mobilityAccessiblePool` | `boolean` | Mobility accessible pool. A swimming pool equipped with a mechanical chair that can be lowered an... |
| `mobilityAccessiblePoolException` | `string` | Mobility accessible pool exception. |

### `Activities`

Amenities and features related to leisure and play.

| Property | Type | Description |
|----------|------|-------------|
| `beachAccess` | `boolean` | Beach access. The hotel property is in close proximity to a beach and offers a way to get to that... |
| `beachAccessException` | `string` | Beach access exception. |
| `beachFront` | `boolean` | Breach front. The hotel property is physically located on the beach alongside an ocean, sea, gulf... |
| `beachFrontException` | `string` | Beach front exception. |
| `bicycleRental` | `boolean` | Bicycle rental. The hotel owns bicycles that it permits guests to borrow and use. Can be free or ... |
| `bicycleRentalException` | `string` | Bicycle rental exception. |
| `boutiqueStores` | `boolean` | Boutique stores. There are stores selling clothing, jewelry, art and decor either on hotel premis... |
| `boutiqueStoresException` | `string` | Boutique stores exception. |
| `casino` | `boolean` | Casino. A space designated for gambling and gaming featuring croupier-run table and card games, a... |
| `casinoException` | `string` | Casino exception. |
| `freeBicycleRental` | `boolean` | Free bicycle rental. The hotel owns bicycles that it permits guests to borrow and use for free. |
| `freeBicycleRentalException` | `string` | Free bicycle rental exception. |
| `freeWatercraftRental` | `boolean` | Free watercraft rental. The hotel owns watercraft that it permits guests to borrow and use for free. |
| `freeWatercraftRentalException` | `string` | Free Watercraft rental exception. |
| `gameRoom` | `boolean` | Game room. There is a room at the hotel containing electronic machines for play such as pinball, ... |
| `gameRoomException` | `string` | Game room exception. |
| `golf` | `boolean` | Golf. There is a golf course on hotel grounds or there is a nearby, independently run golf course... |
| `golfException` | `string` | Golf exception. |
| `horsebackRiding` | `boolean` | Horseback riding. The hotel has a horse barn onsite or an affiliation with a nearby barn to allow... |
| `horsebackRidingException` | `string` | Horseback riding exception. |
| `nightclub` | `boolean` | Nightclub. There is a room at the hotel with a bar, a dance floor, and seating where designated s... |
| `nightclubException` | `string` | Nightclub exception. |
| `privateBeach` | `boolean` | Private beach. The beach which is in close proximity to the hotel is open only to guests. |
| `privateBeachException` | `string` | Private beach exception. |
| `scuba` | `boolean` | Scuba. The provision for guests to dive under naturally occurring water fitted with a self-contai... |
| `scubaException` | `string` | Scuba exception. |
| `snorkeling` | `boolean` | Snorkeling. The provision for guests to participate in a recreational water activity in which swi... |
| `snorkelingException` | `string` | Snorkeling exception. |
| `tennis` | `boolean` | Tennis. The hotel has the requisite court(s) on site or has an affiliation with a nearby facility... |
| `tennisException` | `string` | Tennis exception. |
| `waterSkiing` | `boolean` | Water skiing. The provision of giving guests the opportunity to be pulled across naturally occurr... |
| `waterSkiingException` | `string` | Water skiing exception. |
| `watercraftRental` | `boolean` | Watercraft rental. The hotel owns water vessels that it permits guests to borrow and use. Can be ... |
| `watercraftRentalException` | `string` | Watercraft rental exception. |

### `Business`

Features of the property of specific interest to the business traveler.

| Property | Type | Description |
|----------|------|-------------|
| `businessCenter` | `boolean` | Business center. A designated room at the hotel with one or more desks and equipped with guest-us... |
| `businessCenterException` | `string` | Business center exception. |
| `meetingRooms` | `boolean` | Meeting rooms. Rooms at the hotel designated for business-related gatherings. Rooms are usually e... |
| `meetingRoomsCount` | `integer` | Meeting rooms count. The number of meeting rooms at the property. |
| `meetingRoomsCountException` | `string` | Meeting rooms count exception. |
| `meetingRoomsException` | `string` | Meeting rooms exception. |

### `Connectivity`

The ways in which the property provides guests with the ability to access the internet.

| Property | Type | Description |
|----------|------|-------------|
| `freeWifi` | `boolean` | Free wifi. The hotel offers guests wifi for free. |
| `freeWifiException` | `string` | Free wifi exception. |
| `publicAreaWifiAvailable` | `boolean` | Public area wifi available. Guests have the ability to wirelessly connect to the internet in the ... |
| `publicAreaWifiAvailableException` | `string` | Public area wifi available exception. |
| `publicInternetTerminal` | `boolean` | Public internet terminal. An area of the hotel supplied with computers and designated for the pur... |
| `publicInternetTerminalException` | `string` | Public internet terminal exception. |
| `wifiAvailable` | `boolean` | Wifi available. The hotel provides the ability for guests to wirelessly connect to the internet. ... |
| `wifiAvailableException` | `string` | Wifi available exception. |

### `EcoCertification`

An eco certificate awarded to the hotel. Deprecated: this message is no longer populated. All certification data is now provided by BeCause.

| Property | Type | Description |
|----------|------|-------------|
| `awarded` | `boolean` | Whether the eco certificate was awarded or not. |
| `awardedException` | `string` | Awarded exception. |
| `ecoCertificate` | `string` | Required. The eco certificate. |

### `EnergyEfficiency`

Energy efficiency practices implemented at the hotel.

| Property | Type | Description |
|----------|------|-------------|
| `carbonFreeEnergySources` | `boolean` | Carbon free energy sources. Property sources carbon-free electricity via at least one of the foll... |
| `carbonFreeEnergySourcesException` | `string` | Carbon free energy sources exception. |
| `energyConservationProgram` | `boolean` | Energy conservation program. The property tracks corporate-level Scope 1 and 2 GHG emissions, and... |
| `energyConservationProgramException` | `string` | Energy conservation program exception. |
| `energyEfficientHeatingAndCoolingSystems` | `boolean` | Energy efficient heating and cooling systems. The property doesn't use chlorofluorocarbon (CFC)-b... |
| `energyEfficientHeatingAndCoolingSystemsException` | `string` | Energy efficient heating and cooling systems exception. |
| `energyEfficientLighting` | `boolean` | Energy efficient lighting. At least 75% of the property's lighting is energy efficient, using lig... |
| `energyEfficientLightingException` | `string` | Energy efficient lighting exception. |
| `energySavingThermostats` | `boolean` | Energy saving thermostats. The property installed energy-saving thermostats throughout the buildi... |
| `energySavingThermostatsException` | `string` | Energy saving thermostats exception. |
| `greenBuildingDesign` | `boolean` | Output only. Green building design. True if the property has been awarded a relevant certification. |
| `greenBuildingDesignException` | `string` | Output only. Green building design exception. |
| `independentOrganizationAuditsEnergyUse` | `boolean` | Independent organization audits energy use. The property conducts an energy audit at least every ... |
| `independentOrganizationAuditsEnergyUseException` | `string` | Independent organization audits energy use exception. |

### `EnhancedCleaning`

Enhanced cleaning measures implemented by the hotel during COVID-19.

| Property | Type | Description |
|----------|------|-------------|
| `commercialGradeDisinfectantCleaning` | `boolean` | Commercial-grade disinfectant used to clean the property. |
| `commercialGradeDisinfectantCleaningException` | `string` | Commercial grade disinfectant cleaning exception. |
| `commonAreasEnhancedCleaning` | `boolean` | Enhanced cleaning of common areas. |
| `commonAreasEnhancedCleaningException` | `string` | Common areas enhanced cleaning exception. |
| `employeesTrainedCleaningProcedures` | `boolean` | Employees trained in COVID-19 cleaning procedures. |
| `employeesTrainedCleaningProceduresException` | `string` | Employees trained cleaning procedures exception. |
| `employeesTrainedThoroughHandWashing` | `boolean` | Employees trained in thorough hand-washing. |
| `employeesTrainedThoroughHandWashingException` | `string` | Employees trained thorough hand washing exception. |
| `employeesWearProtectiveEquipment` | `boolean` | Employees wear masks, face shields, and/or gloves. |
| `employeesWearProtectiveEquipmentException` | `string` | Employees wear protective equipment exception. |
| `guestRoomsEnhancedCleaning` | `boolean` | Enhanced cleaning of guest rooms. |
| `guestRoomsEnhancedCleaningException` | `string` | Guest rooms enhanced cleaning exception. |

### `Families`

Services and amenities for families and young guests.

| Property | Type | Description |
|----------|------|-------------|
| `babysitting` | `boolean` | Babysitting. Child care that is offered by hotel staffers or coordinated by hotel staffers with l... |
| `babysittingException` | `string` | Babysitting exception. |
| `kidsActivities` | `boolean` | Kids activities. Recreational options such as sports, films, crafts and games designed for the en... |
| `kidsActivitiesException` | `string` | Kids activities exception. |
| `kidsClub` | `boolean` | Kids club. An organized program of group activities held at the hotel and designed for the enjoym... |
| `kidsClubException` | `string` | Kids club exception. |
| `kidsFriendly` | `boolean` | Kids friendly. The hotel has one or more special features for families with children, such as red... |
| `kidsFriendlyException` | `string` | Kids friendly exception. |

### `FoodAndDrink`

Meals, snacks, and beverages available at the property.

| Property | Type | Description |
|----------|------|-------------|
| `bar` | `boolean` | Bar. A designated room, lounge or area of an on-site restaurant with seating at a counter behind ... |
| `barException` | `string` | Bar exception. |
| `breakfastAvailable` | `boolean` | Breakfast available. The morning meal is offered to all guests. Can be free or for a fee. |
| `breakfastAvailableException` | `string` | Breakfast available exception. |
| `breakfastBuffet` | `boolean` | Breakfast buffet. Breakfast meal service where guests serve themselves from a variety of dishes/f... |
| `breakfastBuffetException` | `string` | Breakfast buffet exception. |
| `buffet` | `boolean` | Buffet. A type of meal where guests serve themselves from a variety of dishes/foods that are put ... |
| `buffetException` | `string` | Buffet exception. |
| `dinnerBuffet` | `boolean` | Dinner buffet. Dinner meal service where guests serve themselves from a variety of dishes/foods t... |
| `dinnerBuffetException` | `string` | Dinner buffet exception. |
| `freeBreakfast` | `boolean` | Free breakfast. Breakfast is offered for free to all guests. Does not apply if limited to certain... |
| `freeBreakfastException` | `string` | Free breakfast exception. |
| `restaurant` | `boolean` | Restaurant. A business onsite at the hotel that is open to the public as well as guests, and offe... |
| `restaurantException` | `string` | Restaurant exception. |
| `restaurantsCount` | `integer` | Restaurants count. The number of restaurants at the hotel. |
| `restaurantsCountException` | `string` | Restaurants count exception. |
| `roomService` | `boolean` | Room service. A hotel staffer delivers meals prepared onsite to a guest's room as per their reque... |
| `roomServiceException` | `string` | Room service exception. |
| `tableService` | `boolean` | Table service. A restaurant in which a staff member is assigned to a guest's table to take their ... |
| `tableServiceException` | `string` | Table service exception. |
| `twentyFourHourRoomService` | `boolean` | 24hr room service. Room service is available 24 hours a day. |
| `twentyFourHourRoomServiceException` | `string` | 24hr room service exception. |
| `vendingMachine` | `boolean` | Vending machine. A glass-fronted mechanized cabinet displaying and dispensing snacks and beverage... |
| `vendingMachineException` | `string` | Vending machine exception. |

### `GetGoogleUpdatedLodgingResponse`

Response message for LodgingService.GetGoogleUpdatedLodging

| Property | Type | Description |
|----------|------|-------------|
| `diffMask` | `string` | Required. The fields in the Lodging that have been updated by Google. Repeated field items are no... |
| `lodging` | `Lodging` | Required. The Google updated Lodging. |

### `GuestUnitFeatures`

Features and available amenities in the guest unit.

| Property | Type | Description |
|----------|------|-------------|
| `bungalowOrVilla` | `boolean` | Bungalow or villa. An independent structure that is part of a hotel or resort that is rented to o... |
| `bungalowOrVillaException` | `string` | Bungalow or villa exception. |
| `connectingUnitAvailable` | `boolean` | Connecting unit available. A guestroom type that features access to an adjacent guestroom for the... |
| `connectingUnitAvailableException` | `string` | Connecting unit available exception. |
| `executiveFloor` | `boolean` | Executive floor. A floor of the hotel where the guestrooms are only bookable by members of the ho... |
| `executiveFloorException` | `string` | Executive floor exception. |
| `maxAdultOccupantsCount` | `integer` | Max adult occupants count. The total number of adult guests allowed to stay overnight in the gues... |
| `maxAdultOccupantsCountException` | `string` | Max adult occupants count exception. |
| `maxChildOccupantsCount` | `integer` | Max child occupants count. The total number of children allowed to stay overnight in the room. |
| `maxChildOccupantsCountException` | `string` | Max child occupants count exception. |
| `maxOccupantsCount` | `integer` | Max occupants count. The total number of guests allowed to stay overnight in the guestroom. |
| `maxOccupantsCountException` | `string` | Max occupants count exception. |
| `privateHome` | `boolean` | Private home. A privately owned home (house, townhouse, apartment, cabin, bungalow etc) that may ... |
| `privateHomeException` | `string` | Private home exception. |
| `suite` | `boolean` | Suite. A guestroom category that implies both a bedroom area and a separate living area. There ma... |
| `suiteException` | `string` | Suite exception. |
| `tier` | `string` | Tier. Classification of the unit based on available features/amenities. A non-standard tier is on... |
| `tierException` | `string` | Tier exception. |
| `totalLivingAreas` | `LivingArea` | Features available in the living areas in the guest unit. |
| `views` | `ViewsFromUnit` | Views available from the guest unit itself. |

### `GuestUnitType`

A specific type of unit primarily defined by its features.

| Property | Type | Description |
|----------|------|-------------|
| `codes` | `array<string>` | Required. Unit or room code identifiers for a single GuestUnitType. Each code must be unique with... |
| `features` | `GuestUnitFeatures` | Features and available amenities of the GuestUnitType. |
| `label` | `string` | Required. Short, English label or name of the GuestUnitType. Target <50 chars. |

### `HealthAndSafety`

Health and safety measures implemented by the hotel during COVID-19.

| Property | Type | Description |
|----------|------|-------------|
| `enhancedCleaning` | `EnhancedCleaning` | Enhanced cleaning measures implemented by the hotel during COVID-19. |
| `increasedFoodSafety` | `IncreasedFoodSafety` | Increased food safety measures implemented by the hotel during COVID-19. |
| `minimizedContact` | `MinimizedContact` | Minimized contact measures implemented by the hotel during COVID-19. |
| `personalProtection` | `PersonalProtection` | Personal protection measures implemented by the hotel during COVID-19. |
| `physicalDistancing` | `PhysicalDistancing` | Physical distancing measures implemented by the hotel during COVID-19. |

### `Housekeeping`

Conveniences provided in guest units to facilitate an easier, more comfortable stay.

| Property | Type | Description |
|----------|------|-------------|
| `dailyHousekeeping` | `boolean` | Daily housekeeping. Guest units are cleaned by hotel staff daily during guest's stay. |
| `dailyHousekeepingException` | `string` | Daily housekeeping exception. |
| `housekeepingAvailable` | `boolean` | Housekeeping available. Guest units are cleaned by hotel staff during guest's stay. Schedule may ... |
| `housekeepingAvailableException` | `string` | Housekeeping available exception. |
| `turndownService` | `boolean` | Turndown service. Hotel staff enters guest units to prepare the bed for sleep use. May or may not... |
| `turndownServiceException` | `string` | Turndown service exception. |

### `IncreasedFoodSafety`

Increased food safety measures implemented by the hotel during COVID-19.

| Property | Type | Description |
|----------|------|-------------|
| `diningAreasAdditionalSanitation` | `boolean` | Additional sanitation in dining areas. |
| `diningAreasAdditionalSanitationException` | `string` | Dining areas additional sanitation exception. |
| `disposableFlatware` | `boolean` | Disposable flatware. |
| `disposableFlatwareException` | `string` | Disposable flatware exception. |
| `foodPreparationAndServingAdditionalSafety` | `boolean` | Additional safety measures during food prep and serving. |
| `foodPreparationAndServingAdditionalSafetyException` | `string` | Food preparation and serving additional safety exception. |
| `individualPackagedMeals` | `boolean` | Individually-packaged meals. |
| `individualPackagedMealsException` | `string` | Individual packaged meals exception. |
| `singleUseFoodMenus` | `boolean` | Single-use menus. |
| `singleUseFoodMenusException` | `string` | Single use food menus exception. |

### `LanguageSpoken`

Language spoken by at least one staff member.

| Property | Type | Description |
|----------|------|-------------|
| `languageCode` | `string` | Required. The BCP-47 language code for the spoken language. Currently accepted codes: ar, de, en,... |
| `spoken` | `boolean` | At least one member of the staff can speak the language. |
| `spokenException` | `string` | Spoken exception. |

### `LivingArea`

An individual room, such as kitchen, bathroom, bedroom, within a bookable guest unit.

| Property | Type | Description |
|----------|------|-------------|
| `accessibility` | `LivingAreaAccessibility` | Accessibility features of the living area. |
| `eating` | `LivingAreaEating` | Information about eating features in the living area. |
| `features` | `LivingAreaFeatures` | Features in the living area. |
| `layout` | `LivingAreaLayout` | Information about the layout of the living area. |
| `sleeping` | `LivingAreaSleeping` | Information about sleeping features in the living area. |

### `LivingAreaAccessibility`

Accessibility features of the living area.

| Property | Type | Description |
|----------|------|-------------|
| `adaCompliantUnit` | `boolean` | ADA compliant unit. A guestroom designed to accommodate the physical challenges of a guest with m... |
| `adaCompliantUnitException` | `string` | ADA compliant unit exception. |
| `hearingAccessibleDoorbell` | `boolean` | Hearing-accessible doorbell. A visual indicator(s) of a knock or ring at the door. |
| `hearingAccessibleDoorbellException` | `string` | Hearing-accessible doorbell exception. |
| `hearingAccessibleFireAlarm` | `boolean` | Hearing-accessible fire alarm. A device that gives warning of a fire through flashing lights. |
| `hearingAccessibleFireAlarmException` | `string` | Hearing-accessible fire alarm exception. |
| `hearingAccessibleUnit` | `boolean` | Hearing-accessible unit. A guestroom designed to accommodate the physical challenges of a guest w... |
| `hearingAccessibleUnitException` | `string` | Hearing-accessible unit exception. |
| `mobilityAccessibleBathtub` | `boolean` | Mobility-accessible bathtub. A bathtub that accomodates the physically challenged with additional... |
| `mobilityAccessibleBathtubException` | `string` | Mobility-accessible bathtub exception. |
| `mobilityAccessibleShower` | `boolean` | Mobility-accessible shower. A shower with an enlarged door or access point to accommodate a wheel... |
| `mobilityAccessibleShowerException` | `string` | Mobility-accessible shower exception. |
| `mobilityAccessibleToilet` | `boolean` | Mobility-accessible toilet. A toilet with a higher seat, grab bars, and/or a larger area around i... |
| `mobilityAccessibleToiletException` | `string` | Mobility-accessible toilet exception. |
| `mobilityAccessibleUnit` | `boolean` | Mobility-accessible unit. A guestroom designed to accommodate the physical challenges of a guest ... |
| `mobilityAccessibleUnitException` | `string` | Mobility-accessible unit exception. |

### `LivingAreaEating`

Information about eating features in the living area.

| Property | Type | Description |
|----------|------|-------------|
| `coffeeMaker` | `boolean` | Coffee maker. An electric appliance that brews coffee by heating and forcing water through ground... |
| `coffeeMakerException` | `string` | Coffee maker exception. |
| `cookware` | `boolean` | Cookware. Kitchen pots, pans and utensils used in connection with the preparation of food. |
| `cookwareException` | `string` | Cookware exception. |
| `dishwasher` | `boolean` | Dishwasher. A counter-height electrical cabinet containing racks for dirty dishware, cookware and... |
| `dishwasherException` | `string` | Dishwasher exception. |
| `indoorGrill` | `boolean` | Indoor grill. Metal grates built into an indoor cooktop on which food is cooked over an open flam... |
| `indoorGrillException` | `string` | Indoor grill exception. |
| `kettle` | `boolean` | Kettle. A covered container with a handle and a spout used for boiling water. |
| `kettleException` | `string` | Kettle exception. |
| `kitchenAvailable` | `boolean` | Kitchen available. An area of the guestroom designated for the preparation and storage of food vi... |
| `kitchenAvailableException` | `string` | Kitchen available exception. |
| `microwave` | `boolean` | Microwave. An electric oven that quickly cooks and heats food by microwave energy. Smaller than a... |
| `microwaveException` | `string` | Microwave exception. |
| `minibar` | `boolean` | Minibar. A small refrigerated cabinet in the guestroom containing bottles/cans of soft drinks, mi... |
| `minibarException` | `string` | Minibar exception. |
| `outdoorGrill` | `boolean` | Outdoor grill. Metal grates on which food is cooked over an open flame or electric heat source. P... |
| `outdoorGrillException` | `string` | Outdoor grill exception. |
| `oven` | `boolean` | Oven. A temperature controlled, heated metal cabinet powered by gas or electricity in which food ... |
| `ovenException` | `string` | Oven exception. |
| `refrigerator` | `boolean` | Refrigerator. A large, climate-controlled electrical cabinet with vertical doors. Built for the p... |
| `refrigeratorException` | `string` | Refrigerator exception. |
| `sink` | `boolean` | Sink. A basin with a faucet attached to a water source and used for the purpose of washing and ri... |
| `sinkException` | `string` | Sink exception. |
| `snackbar` | `boolean` | Snackbar. A small cabinet in the guestroom containing snacks. The items are most commonly availab... |
| `snackbarException` | `string` | Snackbar exception. |
| `stove` | `boolean` | Stove. A kitchen appliance powered by gas or electricity for the purpose of creating a flame or h... |
| `stoveException` | `string` | Stove exception. |
| `teaStation` | `boolean` | Tea station. A small area with the supplies needed to heat water and make tea. |
| `teaStationException` | `string` | Tea station exception. |
| `toaster` | `boolean` | Toaster. A small, temperature controlled electric appliance with rectangular slots at the top tha... |
| `toasterException` | `string` | Toaster exception. |

### `LivingAreaFeatures`

Features in the living area.

| Property | Type | Description |
|----------|------|-------------|
| `airConditioning` | `boolean` | Air conditioning. An electrical machine used to cool the temperature of the guestroom. |
| `airConditioningException` | `string` | Air conditioning exception. |
| `bathtub` | `boolean` | Bathtub. A fixed plumbing feature set on the floor and consisting of a large container that accom... |
| `bathtubException` | `string` | Bathtub exception. |
| `bidet` | `boolean` | Bidet. A plumbing fixture attached to a toilet or a low, fixed sink designed for the purpose of w... |
| `bidetException` | `string` | Bidet exception. |
| `dryer` | `boolean` | Dryer. An electrical machine designed to dry clothing. |
| `dryerException` | `string` | Dryer exception. |
| `electronicRoomKey` | `boolean` | Electronic room key. A card coded by the check-in computer that is read by the lock on the hotel ... |
| `electronicRoomKeyException` | `string` | Electronic room key exception. |
| `fireplace` | `boolean` | Fireplace. A framed opening (aka hearth) at the base of a chimney in which logs or an electrical ... |
| `fireplaceException` | `string` | Fireplace exception. |
| `hairdryer` | `boolean` | Hairdryer. A handheld electric appliance that blows temperature-controlled air for the purpose of... |
| `hairdryerException` | `string` | Hairdryer exception. |
| `heating` | `boolean` | Heating. An electrical machine used to warm the temperature of the guestroom. |
| `heatingException` | `string` | Heating exception. |
| `inunitSafe` | `boolean` | In-unit safe. A strong fireproof cabinet with a programmable lock, used for the protected storage... |
| `inunitSafeException` | `string` | In-unit safe exception. |
| `inunitWifiAvailable` | `boolean` | In-unit Wifi available. Guests can wirelessly connect to the Internet in the guestroom. Can be fr... |
| `inunitWifiAvailableException` | `string` | In-unit Wifi available exception. |
| `ironingEquipment` | `boolean` | Ironing equipment. A device, usually with a flat metal base, that is heated to smooth, finish, or... |
| `ironingEquipmentException` | `string` | Ironing equipment exception. |
| `payPerViewMovies` | `boolean` | Pay per view movies. Televisions with channels that offer films that can be viewed for a fee, and... |
| `payPerViewMoviesException` | `string` | Pay per view movies exception. |
| `privateBathroom` | `boolean` | Private bathroom. A bathroom designated for the express use of the guests staying in a specific g... |
| `privateBathroomException` | `string` | Private bathroom exception. |
| `shower` | `boolean` | Shower. A fixed plumbing fixture for standing bathing that features a tall spray spout or faucet ... |
| `showerException` | `string` | Shower exception. |
| `toilet` | `boolean` | Toilet. A fixed bathroom feature connected to a sewer or septic system and consisting of a water-... |
| `toiletException` | `string` | Toilet exception. |
| `tv` | `boolean` | TV. A television is available in the guestroom. |
| `tvCasting` | `boolean` | TV casting. A television equipped with a device through which the video entertainment accessed on... |
| `tvCastingException` | `string` | TV exception. |
| `tvException` | `string` | TV exception. |
| `tvStreaming` | `boolean` | TV streaming. Televisions that embed a range of web-based apps to allow for watching media from t... |
| `tvStreamingException` | `string` | TV streaming exception. |
| `universalPowerAdapters` | `boolean` | Universal power adapters. A power supply for electronic devices which plugs into a wall for the p... |
| `universalPowerAdaptersException` | `string` | Universal power adapters exception. |
| `washer` | `boolean` | Washer. An electrical machine connected to a running water source designed to launder clothing. |
| `washerException` | `string` | Washer exception. |

### `LivingAreaLayout`

Information about the layout of the living area.

| Property | Type | Description |
|----------|------|-------------|
| `balcony` | `boolean` | Balcony. An outdoor platform attached to a building and surrounded by a short wall, fence or othe... |
| `balconyException` | `string` | Balcony exception. |
| `livingAreaSqMeters` | `number` | Living area sq meters. The measurement in meters of the area of a guestroom's living space. |
| `livingAreaSqMetersException` | `string` | Living area sq meters exception. |
| `loft` | `boolean` | Loft. A three-walled upper area accessed by stairs or a ladder that overlooks the lower area of a... |
| `loftException` | `string` | Loft exception. |
| `nonSmoking` | `boolean` | Non smoking. A guestroom in which the smoking of cigarettes, cigars and pipes is prohibited. |
| `nonSmokingException` | `string` | Non smoking exception. |
| `patio` | `boolean` | Patio. A paved, outdoor area with seating attached to and accessed through a ground-floor guestro... |
| `patioException` | `string` | Patio exception. |
| `stairs` | `boolean` | Stairs. There are steps leading from one level or story to another in the unit. |
| `stairsException` | `string` | Stairs exception. |

### `LivingAreaSleeping`

Information about sleeping features in the living area.

| Property | Type | Description |
|----------|------|-------------|
| `bedsCount` | `integer` | Beds count. The number of permanent beds present in a guestroom. Does not include rollaway beds, ... |
| `bedsCountException` | `string` | Beds count exception. |
| `bunkBedsCount` | `integer` | Bunk beds count. The number of furniture pieces in which one framed mattress is fixed directly ab... |
| `bunkBedsCountException` | `string` | Bunk beds count exception. |
| `cribsCount` | `integer` | Cribs count. The number of small beds for an infant or toddler that the guestroom can obtain. The... |
| `cribsCountException` | `string` | Cribs count exception. |
| `doubleBedsCount` | `integer` | Double beds count. The number of medium beds measuring 53"W x 75"L (135cm x 191cm). Also known as... |
| `doubleBedsCountException` | `string` | Double beds count exception. |
| `featherPillows` | `boolean` | Feather pillows. The option for guests to obtain bed pillows that are stuffed with the feathers a... |
| `featherPillowsException` | `string` | Feather pillows exception. |
| `hypoallergenicBedding` | `boolean` | Hypoallergenic bedding. Bedding such as linens, pillows, mattress covers and/or mattresses that a... |
| `hypoallergenicBeddingException` | `string` | Hypoallergenic bedding exception. |
| `kingBedsCount` | `integer` | King beds count. The number of large beds measuring 76"W x 80"L (193cm x 102cm). Most often meant... |
| `kingBedsCountException` | `string` | King beds count exception. |
| `memoryFoamPillows` | `boolean` | Memory foam pillows. The option for guests to obtain bed pillows that are stuffed with a man-made... |
| `memoryFoamPillowsException` | `string` | Memory foam pillows exception. |
| `otherBedsCount` | `integer` | Other beds count. The number of beds that are not standard mattress and boxspring setups such as ... |
| `otherBedsCountException` | `string` | Other beds count exception. |
| `queenBedsCount` | `integer` | Queen beds count. The number of medium-large beds measuring 60"W x 80"L (152cm x 102cm). |
| `queenBedsCountException` | `string` | Queen beds count exception. |
| `rollAwayBedsCount` | `integer` | Roll away beds count. The number of mattresses on wheeled frames that can be folded in half and r... |
| `rollAwayBedsCountException` | `string` | Roll away beds count exception. |
| `singleOrTwinBedsCount` | `integer` | Single or twin count beds. The number of smaller beds measuring 38"W x 75"L (97cm x 191cm) that c... |
| `singleOrTwinBedsCountException` | `string` | Single or twin beds count exception. |
| `sofaBedsCount` | `integer` | Sofa beds count. The number of specially designed sofas that can be made to serve as a bed by low... |
| `sofaBedsCountException` | `string` | Sofa beds count exception. |
| `syntheticPillows` | `boolean` | Synthetic pillows. The option for guests to obtain bed pillows stuffed with polyester material cr... |
| `syntheticPillowsException` | `string` | Synthetic pillows exception. |

### `Lodging`

Lodging of a location that provides accomodations.

| Property | Type | Description |
|----------|------|-------------|
| `accessibility` | `Accessibility` | Physical adaptations made to the property in consideration of varying levels of human physical ab... |
| `activities` | `Activities` | Amenities and features related to leisure and play. |
| `allUnits` | `GuestUnitFeatures` | Output only. All units on the property have at least these attributes. |
| `business` | `Business` | Features of the property of specific interest to the business traveler. |
| `commonLivingArea` | `LivingArea` | Features of the shared living areas available in this Lodging. |
| `connectivity` | `Connectivity` | The ways in which the property provides guests with the ability to access the internet. |
| `families` | `Families` | Services and amenities for families and young guests. |
| `foodAndDrink` | `FoodAndDrink` | Meals, snacks, and beverages available at the property. |
| `guestUnits` | `array<GuestUnitType>` | Individual GuestUnitTypes that are available in this Lodging. |
| `healthAndSafety` | `HealthAndSafety` | Health and safety measures implemented by the hotel during COVID-19. |
| `housekeeping` | `Housekeeping` | Conveniences provided in guest units to facilitate an easier, more comfortable stay. |
| `metadata` | `LodgingMetadata` | Required. Metadata for the lodging. |
| `name` | `string` | Required. Google identifier for this location in the form: `locations/{location_id}/lodging` |
| `parking` | `Parking` | Parking options at the property. |
| `pets` | `Pets` | Policies regarding guest-owned animals. |
| `policies` | `Policies` | Property rules that impact guests. |
| `pools` | `Pools` | Swimming pool or recreational water facilities available at the hotel. |
| `property` | `Property` | General factual information about the property's physical structure and important dates. |
| `services` | `Services` | Conveniences or help provided by the property to facilitate an easier, more comfortable stay. |
| `someUnits` | `GuestUnitFeatures` | Output only. Some units on the property have as much as these attributes. |
| `sustainability` | `Sustainability` | Sustainability practices implemented at the hotel. |
| `transportation` | `Transportation` | Vehicles or vehicular services facilitated or owned by the property. |
| `wellness` | `Wellness` | Guest facilities at the property to promote or maintain health, beauty, and fitness. |

### `LodgingMetadata`

Metadata for the Lodging.

| Property | Type | Description |
|----------|------|-------------|
| `updateTime` | `string` | Required. The latest time at which the Lodging data is asserted to be true in the real world. Thi... |

### `MinimizedContact`

Minimized contact measures implemented by the hotel during COVID-19.

| Property | Type | Description |
|----------|------|-------------|
| `contactlessCheckinCheckout` | `boolean` | No-contact check-in and check-out. |
| `contactlessCheckinCheckoutException` | `string` | Contactless check-in check-out exception. |
| `digitalGuestRoomKeys` | `boolean` | Keyless mobile entry to guest rooms. |
| `digitalGuestRoomKeysException` | `string` | Digital guest room keys exception. |
| `housekeepingScheduledRequestOnly` | `boolean` | Housekeeping scheduled by request only. |
| `housekeepingScheduledRequestOnlyException` | `string` | Housekeeping scheduled request only exception. |
| `noHighTouchItemsCommonAreas` | `boolean` | High-touch items, such as magazines, removed from common areas. |
| `noHighTouchItemsCommonAreasException` | `string` | No high touch items common areas exception. |
| `noHighTouchItemsGuestRooms` | `boolean` | High-touch items, such as decorative pillows, removed from guest rooms. |
| `noHighTouchItemsGuestRoomsException` | `string` | No high touch items guest rooms exception. |
| `plasticKeycardsDisinfected` | `boolean` | Plastic key cards are disinfected or discarded. |
| `plasticKeycardsDisinfectedException` | `string` | Plastic keycards disinfected exception. |
| `roomBookingsBuffer` | `boolean` | Buffer maintained between room bookings. |
| `roomBookingsBufferException` | `string` | Room bookings buffer exception. |

### `Parking`

Parking options at the property.

| Property | Type | Description |
|----------|------|-------------|
| `electricCarChargingStations` | `boolean` | Electric car charging stations. Electric power stations, usually located outdoors, into which gue... |
| `electricCarChargingStationsException` | `string` | Electric car charging stations exception. |
| `freeParking` | `boolean` | Free parking. The hotel allows the cars of guests to be parked for free. Parking facility may be ... |
| `freeParkingException` | `string` | Free parking exception. |
| `freeSelfParking` | `boolean` | Free self parking. Guests park their own cars for free. Parking facility may be an outdoor lot or... |
| `freeSelfParkingException` | `string` | Free self parking exception. |
| `freeValetParking` | `boolean` | Free valet parking. Hotel staff member parks the cars of guests. Parking with this service is free. |
| `freeValetParkingException` | `string` | Free valet parking exception. |
| `parkingAvailable` | `boolean` | Parking available. The hotel allows the cars of guests to be parked. Can be free or for a fee. Pa... |
| `parkingAvailableException` | `string` | Parking available exception. |
| `selfParkingAvailable` | `boolean` | Self parking available. Guests park their own cars. Parking facility may be an outdoor lot or an ... |
| `selfParkingAvailableException` | `string` | Self parking available exception. |
| `valetParkingAvailable` | `boolean` | Valet parking available. Hotel staff member parks the cars of guests. Parking with this service c... |
| `valetParkingAvailableException` | `string` | Valet parking available exception. |

### `PaymentOptions`

Forms of payment accepted at the property.

| Property | Type | Description |
|----------|------|-------------|
| `cash` | `boolean` | Cash. The hotel accepts payment by paper/coin currency. |
| `cashException` | `string` | Cash exception. |
| `cheque` | `boolean` | Cheque. The hotel accepts a printed document issued by the guest's bank in the guest's name as a ... |
| `chequeException` | `string` | Cheque exception. |
| `creditCard` | `boolean` | Credit card. The hotel accepts payment by a card issued by a bank or credit card company. Also kn... |
| `creditCardException` | `string` | Credit card exception. |
| `debitCard` | `boolean` | Debit card. The hotel accepts a bank-issued card that immediately deducts the charged funds from ... |
| `debitCardException` | `string` | Debit card exception. |
| `mobileNfc` | `boolean` | Mobile nfc. The hotel has the compatible computer hardware terminal that reads and charges a paym... |
| `mobileNfcException` | `string` | Mobile nfc exception. |

### `PersonalProtection`

Personal protection measures implemented by the hotel during COVID-19.

| Property | Type | Description |
|----------|------|-------------|
| `commonAreasOfferSanitizingItems` | `boolean` | Hand-sanitizer and/or sanitizing wipes are offered in common areas. |
| `commonAreasOfferSanitizingItemsException` | `string` | Common areas offer sanitizing items exception. |
| `faceMaskRequired` | `boolean` | Masks required on the property. |
| `faceMaskRequiredException` | `string` | Face mask required exception. |
| `guestRoomHygieneKitsAvailable` | `boolean` | In-room hygiene kits with masks, hand sanitizer, and/or antibacterial wipes. |
| `guestRoomHygieneKitsAvailableException` | `string` | Guest room hygiene kits available exception. |
| `protectiveEquipmentAvailable` | `boolean` | Masks and/or gloves available for guests. |
| `protectiveEquipmentAvailableException` | `string` | Protective equipment available exception. |

### `Pets`

Policies regarding guest-owned animals.

| Property | Type | Description |
|----------|------|-------------|
| `catsAllowed` | `boolean` | Cats allowed. Domesticated felines are permitted at the property and allowed to stay in the guest... |
| `catsAllowedException` | `string` | Cats allowed exception. |
| `dogsAllowed` | `boolean` | Dogs allowed. Domesticated canines are permitted at the property and allowed to stay in the guest... |
| `dogsAllowedException` | `string` | Dogs allowed exception. |
| `petsAllowed` | `boolean` | Pets allowed. Household animals are allowed at the property and in the specific guest room of the... |
| `petsAllowedException` | `string` | Pets allowed exception. |
| `petsAllowedFree` | `boolean` | Pets allowed free. Household animals are allowed at the property and in the specific guest room o... |
| `petsAllowedFreeException` | `string` | Pets allowed free exception. |

### `PhysicalDistancing`

Physical distancing measures implemented by the hotel during COVID-19.

| Property | Type | Description |
|----------|------|-------------|
| `commonAreasPhysicalDistancingArranged` | `boolean` | Common areas arranged to maintain physical distancing. |
| `commonAreasPhysicalDistancingArrangedException` | `string` | Common areas physical distancing arranged exception. |
| `physicalDistancingRequired` | `boolean` | Physical distancing required. |
| `physicalDistancingRequiredException` | `string` | Physical distancing required exception. |
| `safetyDividers` | `boolean` | Safety dividers at front desk and other locations. |
| `safetyDividersException` | `string` | Safety dividers exception. |
| `sharedAreasLimitedOccupancy` | `boolean` | Guest occupancy limited within shared facilities. |
| `sharedAreasLimitedOccupancyException` | `string` | Shared areas limited occupancy exception. |
| `wellnessAreasHavePrivateSpaces` | `boolean` | Private spaces designated in spa and wellness areas. |
| `wellnessAreasHavePrivateSpacesException` | `string` | Wellness areas have private spaces exception. |

### `Policies`

Property rules that impact guests.

| Property | Type | Description |
|----------|------|-------------|
| `allInclusiveAvailable` | `boolean` | All inclusive available. The hotel offers a rate option that includes the cost of the room, meals... |
| `allInclusiveAvailableException` | `string` | All inclusive available exception. |
| `allInclusiveOnly` | `boolean` | All inclusive only. The only rate option offered by the hotel is a rate that includes the cost of... |
| `allInclusiveOnlyException` | `string` | All inclusive only exception. |
| `checkinTime` | `TimeOfDay` | Check-in time. The time of the day at which the hotel begins providing guests access to their uni... |
| `checkinTimeException` | `string` | Check-in time exception. |
| `checkoutTime` | `TimeOfDay` | Check-out time. The time of the day on the last day of a guest's reserved stay at which the guest... |
| `checkoutTimeException` | `string` | Check-out time exception. |
| `kidsStayFree` | `boolean` | Kids stay free. The children of guests are allowed to stay in the room/suite of a parent or adult... |
| `kidsStayFreeException` | `string` | Kids stay free exception. |
| `maxChildAge` | `integer` | Max child age. The hotel allows children up to a certain age to stay in the room/suite of a paren... |
| `maxChildAgeException` | `string` | Max child age exception. |
| `maxKidsStayFreeCount` | `integer` | Max kids stay free count. The hotel allows a specific, defined number of children to stay in the ... |
| `maxKidsStayFreeCountException` | `string` | Max kids stay free count exception. |
| `paymentOptions` | `PaymentOptions` | Forms of payment accepted at the property. |
| `smokeFreeProperty` | `boolean` | Smoke free property. Smoking is not allowed inside the building, on balconies, or in outside spac... |
| `smokeFreePropertyException` | `string` | Smoke free property exception. |

### `Pools`

Swimming pool or recreational water facilities available at the hotel.

| Property | Type | Description |
|----------|------|-------------|
| `adultPool` | `boolean` | Adult pool. A pool restricted for use by adults only. Can be indoors or outdoors. |
| `adultPoolException` | `string` | Adult pool exception. |
| `hotTub` | `boolean` | Hot tub. A man-made pool containing bubbling water maintained at a higher temperature and circula... |
| `hotTubException` | `string` | Hot tub exception. |
| `indoorPool` | `boolean` | Indoor pool. A pool located inside the hotel and available for guests to use for swimming and/or ... |
| `indoorPoolException` | `string` | Indoor pool exception. |
| `indoorPoolsCount` | `integer` | Indoor pools count. The sum of all indoor pools at the hotel. |
| `indoorPoolsCountException` | `string` | Indoor pools count exception. |
| `lazyRiver` | `boolean` | Lazy river. A man-made pool or several interconnected recreational pools built to mimic the shape... |
| `lazyRiverException` | `string` | Lazy river exception. |
| `lifeguard` | `boolean` | Lifeguard. A trained member of the hotel staff stationed by the hotel's indoor or outdoor swimmin... |
| `lifeguardException` | `string` | Lifeguard exception. |
| `outdoorPool` | `boolean` | Outdoor pool. A pool located outside on the grounds of the hotel and available for guests to use ... |
| `outdoorPoolException` | `string` | Outdoor pool exception. |
| `outdoorPoolsCount` | `integer` | Outdoor pools count. The sum of all outdoor pools at the hotel. |
| `outdoorPoolsCountException` | `string` | Outdoor pools count exception. |
| `pool` | `boolean` | Pool. The presence of a pool, either indoors or outdoors, for guests to use for swimming and/or s... |
| `poolException` | `string` | Pool exception. |
| `poolsCount` | `integer` | Pools count. The sum of all pools at the hotel. |
| `poolsCountException` | `string` | Pools count exception. |
| `wadingPool` | `boolean` | Wading pool. A shallow pool designed for small children to play in. Can be indoors or outdoors. A... |
| `wadingPoolException` | `string` | Wading pool exception. |
| `waterPark` | `boolean` | Water park. An aquatic recreation area with a large pool or series of pools that has features suc... |
| `waterParkException` | `string` | Water park exception. |
| `waterslide` | `boolean` | Waterslide. A continuously wetted chute positioned by an indoor or outdoor pool which people slid... |
| `waterslideException` | `string` | Waterslide exception. |
| `wavePool` | `boolean` | Wave pool. A large indoor or outdoor pool with a machine that produces water currents to mimic th... |
| `wavePoolException` | `string` | Wave pool exception. |

### `Property`

General factual information about the property's physical structure and important dates.

| Property | Type | Description |
|----------|------|-------------|
| `builtYear` | `integer` | Built year. The year that construction of the property was completed. |
| `builtYearException` | `string` | Built year exception. |
| `floorsCount` | `integer` | Floors count. The number of stories the building has from the ground floor to the top floor that ... |
| `floorsCountException` | `string` | Floors count exception. |
| `lastRenovatedYear` | `integer` | Last renovated year. The year when the most recent renovation of the property was completed. Reno... |
| `lastRenovatedYearException` | `string` | Last renovated year exception. |
| `roomsCount` | `integer` | Rooms count. The total number of rooms and suites bookable by guests for an overnight stay. Does ... |
| `roomsCountException` | `string` | Rooms count exception. |

### `Services`

Conveniences or help provided by the property to facilitate an easier, more comfortable stay.

| Property | Type | Description |
|----------|------|-------------|
| `baggageStorage` | `boolean` | Baggage storage. A provision for guests to leave their bags at the hotel when they arrive for the... |
| `baggageStorageException` | `string` | Baggage storage exception. |
| `concierge` | `boolean` | Concierge. Hotel staff member(s) responsible for facilitating an easy, comfortable stay through m... |
| `conciergeException` | `string` | Concierge exception. |
| `convenienceStore` | `boolean` | Convenience store. A shop at the hotel primarily selling snacks, drinks, non-prescription medicin... |
| `convenienceStoreException` | `string` | Convenience store exception. |
| `currencyExchange` | `boolean` | Currency exchange. A staff member or automated machine tasked with the transaction of providing t... |
| `currencyExchangeException` | `string` | Currency exchange exception. |
| `elevator` | `boolean` | Elevator. A passenger elevator that transports guests from one story to another. Also known as lift. |
| `elevatorException` | `string` | Elevator exception. |
| `frontDesk` | `boolean` | Front desk. A counter or desk in the lobby or the immediate interior of the hotel where a member ... |
| `frontDeskException` | `string` | Front desk exception. |
| `fullServiceLaundry` | `boolean` | Full service laundry. Laundry and dry cleaning facilitated and handled by the hotel on behalf of ... |
| `fullServiceLaundryException` | `string` | Full service laundry exception. |
| `giftShop` | `boolean` | Gift shop. An on-site store primarily selling souvenirs, mementos and other gift items. May or ma... |
| `giftShopException` | `string` | Gift shop exception. |
| `languagesSpoken` | `array<LanguageSpoken>` | Languages spoken by at least one staff member. |
| `selfServiceLaundry` | `boolean` | Self service laundry. On-site clothes washers and dryers accessible to guests for the purpose of ... |
| `selfServiceLaundryException` | `string` | Self service laundry exception. |
| `socialHour` | `boolean` | Social hour. A reception with complimentary soft drinks, tea, coffee, wine and/or cocktails in th... |
| `socialHourException` | `string` | Social hour exception. |
| `twentyFourHourFrontDesk` | `boolean` | 24hr front desk. Front desk is staffed 24 hours a day. |
| `twentyFourHourFrontDeskException` | `string` | 24hr front desk exception. |
| `wakeUpCalls` | `boolean` | Wake up calls. By direction of the guest, a hotel staff member will phone the guest unit at the r... |
| `wakeUpCallsException` | `string` | Wake up calls exception. |

### `Sustainability`

Sustainability practices implemented at the hotel.

| Property | Type | Description |
|----------|------|-------------|
| `energyEfficiency` | `EnergyEfficiency` | Energy efficiency practices implemented at the hotel. |
| `sustainabilityCertifications` | `SustainabilityCertifications` | Sustainability certifications the hotel has been awarded. Deprecated: this field is no longer pop... |
| `sustainableSourcing` | `SustainableSourcing` | Sustainable sourcing practices implemented at the hotel. |
| `wasteReduction` | `WasteReduction` | Waste reduction practices implemented at the hotel. |
| `waterConservation` | `WaterConservation` | Water conservation practices implemented at the hotel. |

### `SustainabilityCertifications`

Sustainability certifications the hotel has been awarded. Deprecated: this message is no longer populated. All certification data is now provided by BeCause.

| Property | Type | Description |
|----------|------|-------------|
| `breeamCertification` | `string` | BREEAM certification. |
| `breeamCertificationException` | `string` | BREEAM certification exception. |
| `ecoCertifications` | `array<EcoCertification>` | The eco certificates awarded to the hotel. |
| `leedCertification` | `string` | LEED certification. |
| `leedCertificationException` | `string` | LEED certification exception. |

### `SustainableSourcing`

Sustainable sourcing practices implemented at the hotel.

| Property | Type | Description |
|----------|------|-------------|
| `ecoFriendlyToiletries` | `boolean` | Eco friendly toiletries. Soap, shampoo, lotion, and other toiletries provided for guests have a n... |
| `ecoFriendlyToiletriesException` | `string` | Eco friendly toiletries exception. |
| `locallySourcedFoodAndBeverages` | `boolean` | Locally sourced food and beverages. Property sources locally in order to lower the environmental ... |
| `locallySourcedFoodAndBeveragesException` | `string` | Locally sourced food and beverages exception. |
| `organicCageFreeEggs` | `boolean` | Organic cage free eggs. The property sources 100% certified organic and cage-free eggs (shell, li... |
| `organicCageFreeEggsException` | `string` | Organic cage free eggs exception. |
| `organicFoodAndBeverages` | `boolean` | Organic food and beverages. At least 25% of food and beverages, by spend, are certified organic. ... |
| `organicFoodAndBeveragesException` | `string` | Organic food and beverages exception. |
| `responsiblePurchasingPolicy` | `boolean` | Responsible purchasing policy. The property has a responsible procurement policy in place. Respon... |
| `responsiblePurchasingPolicyException` | `string` | Responsible purchasing policy exception. |
| `responsiblySourcesSeafood` | `boolean` | Responsibly sources seafood. The property does not source seafood from the Monterey Bay Aquarium ... |
| `responsiblySourcesSeafoodException` | `string` | Responsibly sources seafood exception. |
| `veganMeals` | `boolean` | Vegan meals. The property provides vegan menu options for guests. Vegan food does not contain ani... |
| `veganMealsException` | `string` | Vegan meals exception. |
| `vegetarianMeals` | `boolean` | Vegetarian meals. The property provides vegetarian menu options for guests. Vegetarian food does ... |
| `vegetarianMealsException` | `string` | Vegetarian meals exception. |

### `TimeOfDay`

Represents a time of day. The date and time zone are either not significant or are specified elsewhere. An API may choose to allow leap seconds. Related types are google.type.Date and `google.protobuf.Timestamp`.

| Property | Type | Description |
|----------|------|-------------|
| `hours` | `integer` | Hours of a day in 24 hour format. Must be greater than or equal to 0 and typically must be less t... |
| `minutes` | `integer` | Minutes of an hour. Must be greater than or equal to 0 and less than or equal to 59. |
| `nanos` | `integer` | Fractions of seconds, in nanoseconds. Must be greater than or equal to 0 and less than or equal t... |
| `seconds` | `integer` | Seconds of a minute. Must be greater than or equal to 0 and typically must be less than or equal ... |

### `Transportation`

Vehicles or vehicular services facilitated or owned by the property.

| Property | Type | Description |
|----------|------|-------------|
| `airportShuttle` | `boolean` | Airport shuttle. The hotel provides guests with a chauffeured van or bus to and from the airport.... |
| `airportShuttleException` | `string` | Airport shuttle exception. |
| `carRentalOnProperty` | `boolean` | Car rental on property. A branch of a rental car company with a processing desk in the hotel. Ava... |
| `carRentalOnPropertyException` | `string` | Car rental on property exception. |
| `freeAirportShuttle` | `boolean` | Free airport shuttle. Airport shuttle is free to guests. Must be free to all guests without any c... |
| `freeAirportShuttleException` | `string` | Free airport shuttle exception. |
| `freePrivateCarService` | `boolean` | Free private car service. Private chauffeured car service is free to guests. |
| `freePrivateCarServiceException` | `string` | Free private car service exception. |
| `localShuttle` | `boolean` | Local shuttle. A car, van or bus provided by the hotel to transport guests to destinations within... |
| `localShuttleException` | `string` | Local shuttle exception. |
| `privateCarService` | `boolean` | Private car service. Hotel provides a private chauffeured car to transport guests to destinations... |
| `privateCarServiceException` | `string` | Private car service exception. |
| `transfer` | `boolean` | Transfer. Hotel provides a shuttle service or car service to take guests to and from the nearest ... |
| `transferException` | `string` | Transfer exception. |

### `ViewsFromUnit`

Views available from the guest unit itself.

| Property | Type | Description |
|----------|------|-------------|
| `beachView` | `boolean` | Beach view. A guestroom that features a window through which guests can see the beach. |
| `beachViewException` | `string` | Beach view exception. |
| `cityView` | `boolean` | City view. A guestroom that features a window through which guests can see the buildings, parks a... |
| `cityViewException` | `string` | City view exception. |
| `gardenView` | `boolean` | Garden view. A guestroom that features a window through which guests can see a garden. |
| `gardenViewException` | `string` | Garden view exception. |
| `lakeView` | `boolean` | Lake view. |
| `lakeViewException` | `string` | Lake view exception. |
| `landmarkView` | `boolean` | Landmark view. A guestroom that features a window through which guests can see a landmark such as... |
| `landmarkViewException` | `string` | Landmark view exception. |
| `oceanView` | `boolean` | Ocean view. A guestroom that features a window through which guests can see the ocean. |
| `oceanViewException` | `string` | Ocean view exception. |
| `poolView` | `boolean` | Pool view. A guestroom that features a window through which guests can see the hotel's swimming p... |
| `poolViewException` | `string` | Pool view exception. |
| `valleyView` | `boolean` | Valley view. A guestroom that features a window through which guests can see over a valley. |
| `valleyViewException` | `string` | Valley view exception. |

### `WasteReduction`

Waste reduction practices implemented at the hotel.

| Property | Type | Description |
|----------|------|-------------|
| `compostableFoodContainersAndCutlery` | `boolean` | Compostable food containers and cutlery. 100% of food service containers and to-go cutlery are co... |
| `compostableFoodContainersAndCutleryException` | `string` | Compostable food containers and cutlery exception. |
| `compostsExcessFood` | `boolean` | Composts excess food. The property has a program and/or policy for diverting waste from landfill ... |
| `compostsExcessFoodException` | `string` | Composts excess food exception. |
| `donatesExcessFood` | `boolean` | Donates excess food. The property has a program and/or policy for diverting waste from landfill t... |
| `donatesExcessFoodException` | `string` | Donates excess food exception. |
| `foodWasteReductionProgram` | `boolean` | Food waste reduction program. The property has established a food waste reduction and donation pr... |
| `foodWasteReductionProgramException` | `string` | Food waste reduction program exception. |
| `noSingleUsePlasticStraws` | `boolean` | No single use plastic straws. The property bans single-use plastic straws. |
| `noSingleUsePlasticStrawsException` | `string` | No single use plastic straws exception. |
| `noSingleUsePlasticWaterBottles` | `boolean` | No single use plastic water bottles. The property bans single-use plastic water bottles. |
| `noSingleUsePlasticWaterBottlesException` | `string` | No single use plastic water bottles exception. |
| `noStyrofoamFoodContainers` | `boolean` | No styrofoam food containers. The property eliminates the use of Styrofoam in disposable food ser... |
| `noStyrofoamFoodContainersException` | `string` | No styrofoam food containers exception. |
| `recyclingProgram` | `boolean` | Recycling program. The property has a recycling program, aligned with LEED waste requirements, an... |
| `recyclingProgramException` | `string` | Recycling program exception. |
| `refillableToiletryContainers` | `boolean` | Refillable toiletry containers. The property has replaced miniature individual containers with re... |
| `refillableToiletryContainersException` | `string` | Refillable toiletry containers exception. |
| `safelyDisposesBatteries` | `boolean` | Safely disposes batteries. The property safely stores and disposes batteries. |
| `safelyDisposesBatteriesException` | `string` | Safely disposes batteries exception. |
| `safelyDisposesElectronics` | `boolean` | Safely disposes electronics. The property has a reputable recycling program that keeps hazardous ... |
| `safelyDisposesElectronicsException` | `string` | Safely disposes electronics exception. |
| `safelyDisposesLightbulbs` | `boolean` | Safely disposes lightbulbs. The property safely stores and disposes lightbulbs. |
| `safelyDisposesLightbulbsException` | `string` | Safely disposes lightbulbs exception. |
| `safelyHandlesHazardousSubstances` | `boolean` | Safely handles hazardous substances. The property has a hazardous waste management program aligne... |
| `safelyHandlesHazardousSubstancesException` | `string` | Safely handles hazardous substances exception. |
| `soapDonationProgram` | `boolean` | Soap donation program. The property participates in a soap donation program such as Clean the Wor... |
| `soapDonationProgramException` | `string` | Soap donation program exception. |
| `toiletryDonationProgram` | `boolean` | Toiletry donation program. The property participates in a toiletry donation program such as Clean... |
| `toiletryDonationProgramException` | `string` | Toiletry donation program exception. |
| `waterBottleFillingStations` | `boolean` | Water bottle filling stations. The property offers water stations throughout the building for gue... |
| `waterBottleFillingStationsException` | `string` | Water bottle filling stations exception. |

### `WaterConservation`

Water conservation practices implemented at the hotel.

| Property | Type | Description |
|----------|------|-------------|
| `independentOrganizationAuditsWaterUse` | `boolean` | Independent organization audits water use. The property conducts a water conservation audit every... |
| `independentOrganizationAuditsWaterUseException` | `string` | Independent organization audits water use exception. |
| `linenReuseProgram` | `boolean` | Linen reuse program. The property offers a linen reuse program. |
| `linenReuseProgramException` | `string` | Linen reuse program exception. |
| `towelReuseProgram` | `boolean` | Towel reuse program. The property offers a towel reuse program. |
| `towelReuseProgramException` | `string` | Towel reuse program exception. |
| `waterSavingShowers` | `boolean` | Water saving showers. All of the property's guest rooms have shower heads that use no more than 2... |
| `waterSavingShowersException` | `string` | Water saving showers exception. |
| `waterSavingSinks` | `boolean` | Water saving sinks. All of the property's guest rooms have bathroom faucets that use a maximum of... |
| `waterSavingSinksException` | `string` | Water saving sinks exception. |
| `waterSavingToilets` | `boolean` | Water saving toilets. All of the property's toilets use 1.6 gallons per flush, or less. |
| `waterSavingToiletsException` | `string` | Water saving toilets exception. |

### `Wellness`

Guest facilities at the property to promote or maintain health, beauty, and fitness.

| Property | Type | Description |
|----------|------|-------------|
| `doctorOnCall` | `boolean` | Doctor on call. The hotel has a contract with a medical professional who provides services to hot... |
| `doctorOnCallException` | `string` | Doctor on call exception. |
| `ellipticalMachine` | `boolean` | Elliptical machine. An electric, stationary fitness machine with pedals that simulates climbing, ... |
| `ellipticalMachineException` | `string` | Elliptical machine exception. |
| `fitnessCenter` | `boolean` | Fitness center. A room or building at the hotel containing equipment to promote physical activity... |
| `fitnessCenterException` | `string` | Fitness center exception. |
| `freeFitnessCenter` | `boolean` | Free fitness center. Guests may use the fitness center for free. |
| `freeFitnessCenterException` | `string` | Free fitness center exception. |
| `freeWeights` | `boolean` | Free weights. Individual handheld fitness equipment of varied weights used for upper body strengt... |
| `freeWeightsException` | `string` | Free weights exception. |
| `massage` | `boolean` | Massage. A service provided by a trained massage therapist involving the physical manipulation of... |
| `massageException` | `string` | Massage exception. |
| `salon` | `boolean` | Salon. A room at the hotel where professionals provide hair styling services such as shampooing, ... |
| `salonException` | `string` | Salon exception. |
| `sauna` | `boolean` | Sauna. A wood-paneled room heated to a high temperature where guests sit on built-in wood benches... |
| `saunaException` | `string` | Sauna exception. |
| `spa` | `boolean` | Spa. A designated area, room or building at the hotel offering health and beauty treatment throug... |
| `spaException` | `string` | Spa exception. |
| `treadmill` | `boolean` | Treadmill. An electric stationary fitness machine that simulates a moving path to promote walking... |
| `treadmillException` | `string` | Treadmill exception. |
| `weightMachine` | `boolean` | Weight machine. Non-electronic fitness equipment designed for the user to target the exertion of ... |
| `weightMachineException` | `string` | Weight machine exception. |

