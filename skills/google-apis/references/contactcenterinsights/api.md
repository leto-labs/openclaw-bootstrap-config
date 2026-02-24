# Contact Center AI Insights API - API Reference

**Version**: `v1` | **Methods**: 188 | **Schemas**: 607

## Methods

| Method | HTTP | Path | Description |
|--------|------|------|-------------|
| `contactcenterinsights.projects.locations.getCorrelationConfig` | GET | `v1/{+name}` | Gets correlation config. |
| `contactcenterinsights.projects.locations.updateCorrelationConfig` | PATCH | `v1/{+name}` | Updates correlation config. |
| `contactcenterinsights.projects.locations.testCorrelationConfig` | POST | `v1/{+location}:testCorrelationConfig` | Tests correlation config on a conversation. |
| `contactcenterinsights.projects.locations.getSettings` | GET | `v1/{+name}` | Gets project-level settings. |
| `contactcenterinsights.projects.locations.updateSettings` | PATCH | `v1/{+name}` | Updates project-level settings. |
| `contactcenterinsights.projects.locations.getEncryptionSpec` | GET | `v1/{+name}` | Gets location-level encryption key specification. |
| `contactcenterinsights.projects.locations.queryMetrics` | POST | `v1/{+location}:queryMetrics` | Query metrics. |
| `contactcenterinsights.projects.locations.generativeInsights` | POST | `v1/{+location}:generativeInsights` | Natural language based Insights which powers the next generation of dashboards in Insights. Next ... |
| `contactcenterinsights.projects.locations.queryPerformanceOverview` | POST | `v1/{+parent}:queryPerformanceOverview` | Generates a summary of predefined performance metrics for a set of conversations. Conversations c... |
| `contactcenterinsights.projects.locations.listAllFeedbackLabels` | GET | `v1/{+parent}:listAllFeedbackLabels` | List all feedback labels by project number. |
| `contactcenterinsights.projects.locations.bulkUploadFeedbackLabels` | POST | `v1/{+parent}:bulkUploadFeedbackLabels` | Upload feedback labels from an external source in bulk. Currently supports labeling Quality AI ex... |
| `contactcenterinsights.projects.locations.bulkDownloadFeedbackLabels` | POST | `v1/{+parent}:bulkDownloadFeedbackLabels` | Download feedback labels in bulk from an external source. Currently supports exporting Quality AI... |
| `contactcenterinsights.projects.locations.bulkDeleteFeedbackLabels` | POST | `v1/{+parent}:bulkDeleteFeedbackLabels` | Delete feedback labels in bulk using a filter. |
| `contactcenterinsights.projects.locations.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `contactcenterinsights.projects.locations.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `contactcenterinsights.projects.locations.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `contactcenterinsights.projects.locations.conversations.create` | POST | `v1/{+parent}/conversations` | Creates a conversation. Note that this method does not support audio transcription or redaction. ... |
| `contactcenterinsights.projects.locations.conversations.upload` | POST | `v1/{+parent}/conversations:upload` | Create a long-running conversation upload operation. This method differs from `CreateConversation... |
| `contactcenterinsights.projects.locations.conversations.patch` | PATCH | `v1/{+name}` | Updates a conversation. |
| `contactcenterinsights.projects.locations.conversations.get` | GET | `v1/{+name}` | Gets a conversation. |
| `contactcenterinsights.projects.locations.conversations.list` | GET | `v1/{+parent}/conversations` | Lists conversations. |
| `contactcenterinsights.projects.locations.conversations.generateSignedAudio` | GET | `v1/{+name}:generateSignedAudio` | Gets the signed URI for the audio for the given conversation. |
| `contactcenterinsights.projects.locations.conversations.delete` | DELETE | `v1/{+name}` | Deletes a conversation. |
| `contactcenterinsights.projects.locations.conversations.sample` | POST | `v1/{+parent}/conversations:sample` | Samples conversations based on user configuration and handles the sampled conversations for diffe... |
| `contactcenterinsights.projects.locations.conversations.bulkAnalyze` | POST | `v1/{+parent}/conversations:bulkAnalyze` | Analyzes multiple conversations in a single request. |
| `contactcenterinsights.projects.locations.conversations.bulkDelete` | POST | `v1/{+parent}/conversations:bulkDelete` | Deletes multiple conversations in a single request. |
| `contactcenterinsights.projects.locations.conversations.ingest` | POST | `v1/{+parent}/conversations:ingest` | Imports conversations and processes them according to the user's configuration. |
| `contactcenterinsights.projects.locations.conversations.calculateStats` | GET | `v1/{+location}/conversations:calculateStats` | Gets conversation statistics. |
| `contactcenterinsights.projects.locations.conversations.analyses.create` | POST | `v1/{+parent}/analyses` | Creates an analysis. The long running operation is done when the analysis has completed. |
| `contactcenterinsights.projects.locations.conversations.analyses.get` | GET | `v1/{+name}` | Gets an analysis. |
| `contactcenterinsights.projects.locations.conversations.analyses.list` | GET | `v1/{+parent}/analyses` | Lists analyses. |
| `contactcenterinsights.projects.locations.conversations.analyses.delete` | DELETE | `v1/{+name}` | Deletes an analysis. |
| `contactcenterinsights.projects.locations.conversations.segments.bulkAnalyze` | POST | `v1/{+parent}/segments:bulkAnalyze` | Analyzes multiple conversations in a single request. |
| `contactcenterinsights.projects.locations.conversations.feedbackLabels.create` | POST | `v1/{+parent}/feedbackLabels` | Create feedback label. |
| `contactcenterinsights.projects.locations.conversations.feedbackLabels.list` | GET | `v1/{+parent}/feedbackLabels` | List feedback labels. |
| `contactcenterinsights.projects.locations.conversations.feedbackLabels.get` | GET | `v1/{+name}` | Get feedback label. |
| `contactcenterinsights.projects.locations.conversations.feedbackLabels.patch` | PATCH | `v1/{+name}` | Update feedback label. |
| `contactcenterinsights.projects.locations.conversations.feedbackLabels.delete` | DELETE | `v1/{+name}` | Delete feedback label. |
| `contactcenterinsights.projects.locations.conversations.assessments.create` | POST | `v1/{+parent}/assessments` | Create Assessment. |
| `contactcenterinsights.projects.locations.conversations.assessments.get` | GET | `v1/{+name}` | Get Assessment. |
| `contactcenterinsights.projects.locations.conversations.assessments.list` | GET | `v1/{+parent}/assessments` | List Assessments. |
| `contactcenterinsights.projects.locations.conversations.assessments.delete` | DELETE | `v1/{+name}` | Delete an Assessment. |
| `contactcenterinsights.projects.locations.conversations.assessments.publish` | POST | `v1/{+name}:publish` | Publish an Assessment. |
| `contactcenterinsights.projects.locations.conversations.assessments.appeal` | POST | `v1/{+name}:appeal` | Appeal an Assessment. |
| `contactcenterinsights.projects.locations.conversations.assessments.finalize` | POST | `v1/{+name}:finalize` | Finalize an Assessment. |
| `contactcenterinsights.projects.locations.conversations.assessments.notes.create` | POST | `v1/{+parent}/notes` | Create Note. |
| `contactcenterinsights.projects.locations.conversations.assessments.notes.list` | GET | `v1/{+parent}/notes` | List Notes. |
| `contactcenterinsights.projects.locations.conversations.assessments.notes.patch` | PATCH | `v1/{+name}` | Update Note. |
| `contactcenterinsights.projects.locations.conversations.assessments.notes.delete` | DELETE | `v1/{+name}` | Deletes a Note. |
| `contactcenterinsights.projects.locations.datasets.create` | POST | `v1/{+parent}/datasets` | Creates a dataset. |
| `contactcenterinsights.projects.locations.datasets.list` | GET | `v1/{+parent}/datasets` | List datasets matching the input. |
| `contactcenterinsights.projects.locations.datasets.get` | GET | `v1/{+name}` | Gets a dataset. |
| `contactcenterinsights.projects.locations.datasets.patch` | PATCH | `v1/{+name}` | Updates a dataset. |
| `contactcenterinsights.projects.locations.datasets.delete` | DELETE | `v1/{+name}` | Delete a dataset. |
| `contactcenterinsights.projects.locations.datasets.listAllFeedbackLabels` | GET | `v1/{+parent}:listAllFeedbackLabels` | List all feedback labels by project number. |
| `contactcenterinsights.projects.locations.datasets.bulkUploadFeedbackLabels` | POST | `v1/{+parent}:bulkUploadFeedbackLabels` | Upload feedback labels from an external source in bulk. Currently supports labeling Quality AI ex... |
| `contactcenterinsights.projects.locations.datasets.bulkDownloadFeedbackLabels` | POST | `v1/{+parent}:bulkDownloadFeedbackLabels` | Download feedback labels in bulk from an external source. Currently supports exporting Quality AI... |
| `contactcenterinsights.projects.locations.datasets.bulkDeleteFeedbackLabels` | POST | `v1/{+parent}:bulkDeleteFeedbackLabels` | Delete feedback labels in bulk using a filter. |
| `contactcenterinsights.projects.locations.datasets.conversations.get` | GET | `v1/{+name}` | Gets a conversation. |
| `contactcenterinsights.projects.locations.datasets.conversations.list` | GET | `v1/{+parent}/conversations` | Lists conversations. |
| `contactcenterinsights.projects.locations.datasets.conversations.generateSignedAudio` | GET | `v1/{+name}:generateSignedAudio` | Gets the signed URI for the audio for the given conversation. |
| `contactcenterinsights.projects.locations.datasets.conversations.delete` | DELETE | `v1/{+name}` | Deletes a conversation. |
| `contactcenterinsights.projects.locations.datasets.conversations.sample` | POST | `v1/{+parent}/conversations:sample` | Samples conversations based on user configuration and handles the sampled conversations for diffe... |
| `contactcenterinsights.projects.locations.datasets.conversations.bulkDelete` | POST | `v1/{+parent}/conversations:bulkDelete` | Deletes multiple conversations in a single request. |
| `contactcenterinsights.projects.locations.datasets.conversations.ingest` | POST | `v1/{+parent}/conversations:ingest` | Imports conversations and processes them according to the user's configuration. |
| `contactcenterinsights.projects.locations.datasets.conversations.calculateStats` | POST | `v1/{+location}/conversations:calculateStats` | Gets conversation statistics. |
| `contactcenterinsights.projects.locations.datasets.conversations.feedbackLabels.create` | POST | `v1/{+parent}/feedbackLabels` | Create feedback label. |
| `contactcenterinsights.projects.locations.datasets.conversations.feedbackLabels.list` | GET | `v1/{+parent}/feedbackLabels` | List feedback labels. |
| `contactcenterinsights.projects.locations.datasets.conversations.feedbackLabels.get` | GET | `v1/{+name}` | Get feedback label. |
| `contactcenterinsights.projects.locations.datasets.conversations.feedbackLabels.patch` | PATCH | `v1/{+name}` | Update feedback label. |
| `contactcenterinsights.projects.locations.datasets.conversations.feedbackLabels.delete` | DELETE | `v1/{+name}` | Delete feedback label. |
| `contactcenterinsights.projects.locations.datasets.insightsdata.export` | POST | `v1/{+parent}/insightsdata:export` | Export insights data to a destination defined in the request body. |
| `contactcenterinsights.projects.locations.insightsdata.export` | POST | `v1/{+parent}/insightsdata:export` | Export insights data to a destination defined in the request body. |
| `contactcenterinsights.projects.locations.issueModels.create` | POST | `v1/{+parent}/issueModels` | Creates an issue model. |
| `contactcenterinsights.projects.locations.issueModels.patch` | PATCH | `v1/{+name}` | Updates an issue model. |
| `contactcenterinsights.projects.locations.issueModels.get` | GET | `v1/{+name}` | Gets an issue model. |
| `contactcenterinsights.projects.locations.issueModels.list` | GET | `v1/{+parent}/issueModels` | Lists issue models. |
| `contactcenterinsights.projects.locations.issueModels.delete` | DELETE | `v1/{+name}` | Deletes an issue model. |
| `contactcenterinsights.projects.locations.issueModels.deploy` | POST | `v1/{+name}:deploy` | Deploys an issue model. Returns an error if a model is already deployed. An issue model can only ... |
| `contactcenterinsights.projects.locations.issueModels.undeploy` | POST | `v1/{+name}:undeploy` | Undeploys an issue model. An issue model can not be used in analysis after it has been undeployed. |
| `contactcenterinsights.projects.locations.issueModels.export` | POST | `v1/{+name}:export` | Exports an issue model to the provided destination. |
| `contactcenterinsights.projects.locations.issueModels.import` | POST | `v1/{+parent}/issueModels:import` | Imports an issue model from a Cloud Storage bucket. |
| `contactcenterinsights.projects.locations.issueModels.calculateIssueModelStats` | GET | `v1/{+issueModel}:calculateIssueModelStats` | Gets an issue model's statistics. |
| `contactcenterinsights.projects.locations.issueModels.issues.get` | GET | `v1/{+name}` | Gets an issue. |
| `contactcenterinsights.projects.locations.issueModels.issues.list` | GET | `v1/{+parent}/issues` | Lists issues. |
| `contactcenterinsights.projects.locations.issueModels.issues.patch` | PATCH | `v1/{+name}` | Updates an issue. |
| `contactcenterinsights.projects.locations.issueModels.issues.create` | POST | `v1/{+parent}/issues` | Creates an issue. |
| `contactcenterinsights.projects.locations.issueModels.issues.delete` | DELETE | `v1/{+name}` | Deletes an issue. |
| `contactcenterinsights.projects.locations.phraseMatchers.create` | POST | `v1/{+parent}/phraseMatchers` | Creates a phrase matcher. |
| `contactcenterinsights.projects.locations.phraseMatchers.get` | GET | `v1/{+name}` | Gets a phrase matcher. |
| `contactcenterinsights.projects.locations.phraseMatchers.list` | GET | `v1/{+parent}/phraseMatchers` | Lists phrase matchers. |
| `contactcenterinsights.projects.locations.phraseMatchers.delete` | DELETE | `v1/{+name}` | Deletes a phrase matcher. |
| `contactcenterinsights.projects.locations.phraseMatchers.patch` | PATCH | `v1/{+name}` | Updates a phrase matcher. |
| `contactcenterinsights.projects.locations.analysisRules.create` | POST | `v1/{+parent}/analysisRules` | Creates a analysis rule. |
| `contactcenterinsights.projects.locations.analysisRules.get` | GET | `v1/{+name}` | Get a analysis rule. |
| `contactcenterinsights.projects.locations.analysisRules.list` | GET | `v1/{+parent}/analysisRules` | Lists analysis rules. |
| `contactcenterinsights.projects.locations.analysisRules.patch` | PATCH | `v1/{+name}` | Updates a analysis rule. |
| `contactcenterinsights.projects.locations.analysisRules.delete` | DELETE | `v1/{+name}` | Deletes a analysis rule. |
| `contactcenterinsights.projects.locations.autoLabelingRules.list` | GET | `v1/{+parent}/autoLabelingRules` | Lists auto labeling rules. |
| `contactcenterinsights.projects.locations.autoLabelingRules.get` | GET | `v1/{+name}` | Gets an auto labeling rule. |
| `contactcenterinsights.projects.locations.autoLabelingRules.create` | POST | `v1/{+parent}/autoLabelingRules` | Creates an auto labeling rule. |
| `contactcenterinsights.projects.locations.autoLabelingRules.patch` | PATCH | `v1/{+name}` | Updates an auto labeling rule. |
| `contactcenterinsights.projects.locations.autoLabelingRules.delete` | DELETE | `v1/{+name}` | Deletes an auto labeling rule. |
| `contactcenterinsights.projects.locations.autoLabelingRules.test` | POST | `v1/{+parent}/autoLabelingRules:test` | Tests auto labeling rules against a conversation. |
| `contactcenterinsights.projects.locations.assessmentRules.create` | POST | `v1/{+parent}/assessmentRules` | Creates an assessment rule. |
| `contactcenterinsights.projects.locations.assessmentRules.get` | GET | `v1/{+name}` | Get an assessment rule. |
| `contactcenterinsights.projects.locations.assessmentRules.list` | GET | `v1/{+parent}/assessmentRules` | Lists assessment rules. |
| `contactcenterinsights.projects.locations.assessmentRules.patch` | PATCH | `v1/{+name}` | Updates an assessment rule. |
| `contactcenterinsights.projects.locations.assessmentRules.delete` | DELETE | `v1/{+name}` | Deletes an assessment rule. |
| `contactcenterinsights.projects.locations.encryptionSpec.initialize` | POST | `v1/{+name}:initialize` | Initializes a location-level encryption key specification. An error will result if the location h... |
| `contactcenterinsights.projects.locations.views.create` | POST | `v1/{+parent}/views` | Creates a view. |
| `contactcenterinsights.projects.locations.views.get` | GET | `v1/{+name}` | Gets a view. |
| `contactcenterinsights.projects.locations.views.list` | GET | `v1/{+parent}/views` | Lists views. |
| `contactcenterinsights.projects.locations.views.patch` | PATCH | `v1/{+name}` | Updates a view. |
| `contactcenterinsights.projects.locations.views.delete` | DELETE | `v1/{+name}` | Deletes a view. |
| `contactcenterinsights.projects.locations.qaQuestionTags.create` | POST | `v1/{+parent}/qaQuestionTags` | Creates a QaQuestionTag. |
| `contactcenterinsights.projects.locations.qaQuestionTags.get` | GET | `v1/{+name}` | Gets a QaQuestionTag. |
| `contactcenterinsights.projects.locations.qaQuestionTags.patch` | PATCH | `v1/{+name}` | Updates a QaQuestionTag. |
| `contactcenterinsights.projects.locations.qaQuestionTags.delete` | DELETE | `v1/{+name}` | Deletes a QaQuestionTag. |
| `contactcenterinsights.projects.locations.qaQuestionTags.list` | GET | `v1/{+parent}/qaQuestionTags` | Lists the question tags. |
| `contactcenterinsights.projects.locations.qaScorecards.create` | POST | `v1/{+parent}/qaScorecards` | Create a QaScorecard. |
| `contactcenterinsights.projects.locations.qaScorecards.get` | GET | `v1/{+name}` | Gets a QaScorecard. |
| `contactcenterinsights.projects.locations.qaScorecards.patch` | PATCH | `v1/{+name}` | Updates a QaScorecard. |
| `contactcenterinsights.projects.locations.qaScorecards.delete` | DELETE | `v1/{+name}` | Deletes a QaScorecard. |
| `contactcenterinsights.projects.locations.qaScorecards.list` | GET | `v1/{+parent}/qaScorecards` | Lists QaScorecards. |
| `contactcenterinsights.projects.locations.qaScorecards.revisions.create` | POST | `v1/{+parent}/revisions` | Creates a QaScorecardRevision. |
| `contactcenterinsights.projects.locations.qaScorecards.revisions.get` | GET | `v1/{+name}` | Gets a QaScorecardRevision. |
| `contactcenterinsights.projects.locations.qaScorecards.revisions.tuneQaScorecardRevision` | POST | `v1/{+parent}:tuneQaScorecardRevision` | Fine tune one or more QaModels. |
| `contactcenterinsights.projects.locations.qaScorecards.revisions.deploy` | POST | `v1/{+name}:deploy` | Deploy a QaScorecardRevision. |
| `contactcenterinsights.projects.locations.qaScorecards.revisions.undeploy` | POST | `v1/{+name}:undeploy` | Undeploy a QaScorecardRevision. |
| `contactcenterinsights.projects.locations.qaScorecards.revisions.delete` | DELETE | `v1/{+name}` | Deletes a QaScorecardRevision. |
| `contactcenterinsights.projects.locations.qaScorecards.revisions.list` | GET | `v1/{+parent}/revisions` | Lists all revisions under the parent QaScorecard. |
| `contactcenterinsights.projects.locations.qaScorecards.revisions.qaQuestions.create` | POST | `v1/{+parent}/qaQuestions` | Create a QaQuestion. |
| `contactcenterinsights.projects.locations.qaScorecards.revisions.qaQuestions.get` | GET | `v1/{+name}` | Gets a QaQuestion. |
| `contactcenterinsights.projects.locations.qaScorecards.revisions.qaQuestions.patch` | PATCH | `v1/{+name}` | Updates a QaQuestion. |
| `contactcenterinsights.projects.locations.qaScorecards.revisions.qaQuestions.delete` | DELETE | `v1/{+name}` | Deletes a QaQuestion. |
| `contactcenterinsights.projects.locations.qaScorecards.revisions.qaQuestions.list` | GET | `v1/{+parent}/qaQuestions` | Lists QaQuestions. |
| `contactcenterinsights.projects.locations.authorizedViewSets.create` | POST | `v1/{+parent}/authorizedViewSets` | Create AuthorizedViewSet |
| `contactcenterinsights.projects.locations.authorizedViewSets.get` | GET | `v1/{+name}` | Get AuthorizedViewSet |
| `contactcenterinsights.projects.locations.authorizedViewSets.list` | GET | `v1/{+parent}/authorizedViewSets` | List AuthorizedViewSets |
| `contactcenterinsights.projects.locations.authorizedViewSets.patch` | PATCH | `v1/{+name}` | Updates an AuthorizedViewSet. |
| `contactcenterinsights.projects.locations.authorizedViewSets.delete` | DELETE | `v1/{+name}` | Deletes an AuthorizedViewSet. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.setIamPolicy` | POST | `v1/{+resource}:setIamPolicy` | Sets the access control policy on the specified resource. Replaces any existing policy. Can retur... |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.getIamPolicy` | GET | `v1/{+resource}:getIamPolicy` | Gets the access control policy for a resource. Returns an empty policy if the resource exists and... |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.testIamPermissions` | POST | `v1/{+resource}:testIamPermissions` | Returns permissions that a caller has on the specified resource. If the resource does not exist, ... |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.queryMetrics` | POST | `v1/{+location}:queryMetrics` | Query metrics. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.generativeInsights` | POST | `v1/{+location}:generativeInsights` | Natural language based Insights which powers the next generation of dashboards in Insights. Next ... |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.queryPerformanceOverview` | POST | `v1/{+parent}:queryPerformanceOverview` | Generates a summary of predefined performance metrics for a set of conversations. Conversations c... |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.create` | POST | `v1/{+parent}/authorizedViews` | Create AuthorizedView |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.get` | GET | `v1/{+name}` | Get AuthorizedView |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.list` | GET | `v1/{+parent}/authorizedViews` | List AuthorizedViewSets |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.search` | GET | `v1/{+parent}/authorizedViews:search` | SearchAuthorizedViewSets |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.patch` | PATCH | `v1/{+name}` | Updates an AuthorizedView. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.delete` | DELETE | `v1/{+name}` | Deletes an AuthorizedView. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.operations.list` | GET | `v1/{+name}/operations` | Lists operations that match the specified filter in the request. If the server doesn't support th... |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.operations.get` | GET | `v1/{+name}` | Gets the latest state of a long-running operation. Clients can use this method to poll the operat... |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.operations.cancel` | POST | `v1/{+name}:cancel` | Starts asynchronous cancellation on a long-running operation. The server makes a best effort to c... |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.get` | GET | `v1/{+name}` | Gets a conversation. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.list` | GET | `v1/{+parent}/conversations` | Lists conversations. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.generateSignedAudio` | GET | `v1/{+name}:generateSignedAudio` | Gets the signed URI for the audio for the given conversation. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.delete` | DELETE | `v1/{+name}` | Deletes a conversation. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.calculateStats` | GET | `v1/{+location}/conversations:calculateStats` | Gets conversation statistics. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.feedbackLabels.create` | POST | `v1/{+parent}/feedbackLabels` | Create feedback label. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.feedbackLabels.list` | GET | `v1/{+parent}/feedbackLabels` | List feedback labels. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.feedbackLabels.get` | GET | `v1/{+name}` | Get feedback label. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.feedbackLabels.patch` | PATCH | `v1/{+name}` | Update feedback label. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.feedbackLabels.delete` | DELETE | `v1/{+name}` | Delete feedback label. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.create` | POST | `v1/{+parent}/assessments` | Create Assessment. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.get` | GET | `v1/{+name}` | Get Assessment. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.list` | GET | `v1/{+parent}/assessments` | List Assessments. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.delete` | DELETE | `v1/{+name}` | Delete an Assessment. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.publish` | POST | `v1/{+name}:publish` | Publish an Assessment. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.appeal` | POST | `v1/{+name}:appeal` | Appeal an Assessment. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.finalize` | POST | `v1/{+name}:finalize` | Finalize an Assessment. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.notes.create` | POST | `v1/{+parent}/notes` | Create Note. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.notes.list` | GET | `v1/{+parent}/notes` | List Notes. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.notes.patch` | PATCH | `v1/{+name}` | Update Note. |
| `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.notes.delete` | DELETE | `v1/{+name}` | Deletes a Note. |
| `contactcenterinsights.projects.locations.dashboards.create` | POST | `v1/{+parent}/dashboards` | Creates a Dashboard. |
| `contactcenterinsights.projects.locations.dashboards.get` | GET | `v1/{+name}` | Gets a Dashboard. |
| `contactcenterinsights.projects.locations.dashboards.list` | GET | `v1/{+parent}/dashboards` | Lists Dashboards. |
| `contactcenterinsights.projects.locations.dashboards.patch` | PATCH | `v1/{+name}` | Updates a Dashboard. |
| `contactcenterinsights.projects.locations.dashboards.delete` | DELETE | `v1/{+name}` | Deletes a Dashboard. |
| `contactcenterinsights.projects.locations.dashboards.charts.create` | POST | `v1/{+parent}/charts` | Creates a Chart. |
| `contactcenterinsights.projects.locations.dashboards.charts.get` | GET | `v1/{+name}` | Gets a Chart. |
| `contactcenterinsights.projects.locations.dashboards.charts.list` | GET | `v1/{+parent}/charts` | Lists Charts. |
| `contactcenterinsights.projects.locations.dashboards.charts.patch` | PATCH | `v1/{+name}` | Updates a Chart. |
| `contactcenterinsights.projects.locations.dashboards.charts.delete` | DELETE | `v1/{+name}` | Deletes a Chart. |

### `contactcenterinsights.projects.locations.getCorrelationConfig`

**GET** `v1/{+name}`

Gets correlation config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the correlation config resource to get. Format: projects/{project}/locations/{location}/correla... |

**Response**: `GoogleCloudContactcenterinsightsV1CorrelationConfig`

```typescript
const res = await contactcenterinsights.locations.getCorrelationConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.updateCorrelationConfig`

**PATCH** `v1/{+name}`

Updates correlation config.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. The resource name of the correlation config. Format: projects/{project}/locations/{location}/c... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. |

**Request body**: `GoogleCloudContactcenterinsightsV1CorrelationConfig`

**Response**: `GoogleCloudContactcenterinsightsV1CorrelationConfig`

```typescript
const res = await contactcenterinsights.locations.updateCorrelationConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.testCorrelationConfig`

**POST** `v1/{+location}:testCorrelationConfig`

Tests correlation config on a conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location to test correlation config. Format: projects/{project}/locations/{location} |

**Request body**: `GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.locations.testCorrelationConfig({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.getSettings`

**GET** `v1/{+name}`

Gets project-level settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the settings resource to get. |

**Response**: `GoogleCloudContactcenterinsightsV1Settings`

```typescript
const res = await contactcenterinsights.locations.getSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.updateSettings`

**PATCH** `v1/{+name}`

Updates project-level settings.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the settings resource. Format: projects/{project}/locations/{location}/settings |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. |

**Request body**: `GoogleCloudContactcenterinsightsV1Settings`

**Response**: `GoogleCloudContactcenterinsightsV1Settings`

```typescript
const res = await contactcenterinsights.locations.updateSettings({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.getEncryptionSpec`

**GET** `v1/{+name}`

Gets location-level encryption key specification.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the encryption spec resource to get. |

**Response**: `GoogleCloudContactcenterinsightsV1EncryptionSpec`

```typescript
const res = await contactcenterinsights.locations.getEncryptionSpec({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.queryMetrics`

**POST** `v1/{+location}:queryMetrics`

Query metrics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location of the data. "projects/{project}/locations/{location}" |

**Request body**: `GoogleCloudContactcenterinsightsV1QueryMetricsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.locations.queryMetrics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.generativeInsights`

**POST** `v1/{+location}:generativeInsights`

Natural language based Insights which powers the next generation of dashboards in Insights. Next generation of QueryMetrics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location of the data. "projects/{project}/locations/{location}" |

**Request body**: `GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.locations.generativeInsights({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.queryPerformanceOverview`

**POST** `v1/{+parent}:queryPerformanceOverview`

Generates a summary of predefined performance metrics for a set of conversations. Conversations can be specified by specifying a time window and an agent id, for now. The summary includes a comparison of metrics computed for conversations in the previous time period, and also a comparison with peers in the same time period.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the conversations to derive performance stats from. "projects/{project}/locations/{l... |

**Request body**: `GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.locations.queryPerformanceOverview({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.listAllFeedbackLabels`

**GET** `v1/{+parent}:listAllFeedbackLabels`

List all feedback labels by project number.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of all feedback labels per project. |
| `filter` | `string` | query | No | Optional. A filter to reduce results to a specific subset in the entire project. Supports disjunctions (OR) and conju... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of feedback labels to return in the response. A valid page size ranges from 0 to 100,000... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListAllFeedbackLabelsResponse`. This value indicates that this is a continu... |

**Response**: `GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse`

```typescript
const res = await contactcenterinsights.locations.listAllFeedbackLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.bulkUploadFeedbackLabels`

**POST** `v1/{+parent}:bulkUploadFeedbackLabels`

Upload feedback labels from an external source in bulk. Currently supports labeling Quality AI example conversations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for new feedback labels. |

**Request body**: `GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.locations.bulkUploadFeedbackLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.bulkDownloadFeedbackLabels`

**POST** `v1/{+parent}:bulkDownloadFeedbackLabels`

Download feedback labels in bulk from an external source. Currently supports exporting Quality AI example conversations with transcripts and question bodies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for new feedback labels. |

**Request body**: `GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.locations.bulkDownloadFeedbackLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.bulkDeleteFeedbackLabels`

**POST** `v1/{+parent}:bulkDeleteFeedbackLabels`

Delete feedback labels in bulk using a filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for new feedback labels. |

**Request body**: `GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.locations.bulkDeleteFeedbackLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.operations.list`

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

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await contactcenterinsights.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.create`

**POST** `v1/{+parent}/conversations`

Creates a conversation. Note that this method does not support audio transcription or redaction. Use `conversations.upload` instead.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the conversation. |
| `conversationId` | `string` | query | No | A unique ID for the new conversation. This ID will become the final component of the conversation's resource name. If... |

**Request body**: `GoogleCloudContactcenterinsightsV1Conversation`

**Response**: `GoogleCloudContactcenterinsightsV1Conversation`

```typescript
const res = await contactcenterinsights.conversations.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.upload`

**POST** `v1/{+parent}/conversations:upload`

Create a long-running conversation upload operation. This method differs from `CreateConversation` by allowing audio transcription and optional DLP redaction.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the conversation. |

**Request body**: `GoogleCloudContactcenterinsightsV1UploadConversationRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.conversations.upload({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.patch`

**PATCH** `v1/{+name}`

Updates a conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}/conversations/{conv... |
| `allowMissing` | `boolean` | query | No | Optional. Defaults to false. If set to true, and the conversation is not found, a new conversation will be created. I... |
| `conversationAutoLabelingUpdateConfig.allowAutoLabelingUpdate` | `boolean` | query | No | Optional. If set to true, the conversation will be updated with auto labeling results. |
| `updateMask` | `string` | query | No | The list of fields to be updated. All possible fields can be updated by passing `*`, or a subset of the following upd... |

**Request body**: `GoogleCloudContactcenterinsightsV1Conversation`

**Response**: `GoogleCloudContactcenterinsightsV1Conversation`

```typescript
const res = await contactcenterinsights.conversations.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.get`

**GET** `v1/{+name}`

Gets a conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the conversation to get. |
| `view` | `string` | query | No | The level of details of the conversation. Default is `FULL`. |

**Response**: `GoogleCloudContactcenterinsightsV1Conversation`

```typescript
const res = await contactcenterinsights.conversations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.list`

**GET** `v1/{+parent}/conversations`

Lists conversations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the conversation. |
| `filter` | `string` | query | No | A filter to reduce results to a specific subset. Useful for querying conversations with specific properties. |
| `orderBy` | `string` | query | No | Optional. The attribute by which to order conversations in the response. If empty, conversations will be ordered by d... |
| `pageSize` | `integer` | query | No | The maximum number of conversations to return in the response. A valid page size ranges from 0 to 100,000 inclusive. ... |
| `pageToken` | `string` | query | No | The value returned by the last `ListConversationsResponse`. This value indicates that this is a continuation of a pri... |
| `view` | `string` | query | No | The level of details of the conversation. Default is `BASIC`. |

**Response**: `GoogleCloudContactcenterinsightsV1ListConversationsResponse`

```typescript
const res = await contactcenterinsights.conversations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.generateSignedAudio`

**GET** `v1/{+name}:generateSignedAudio`

Gets the signed URI for the audio for the given conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the conversation to sign. |

**Response**: `GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse`

```typescript
const res = await contactcenterinsights.conversations.generateSignedAudio({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.delete`

**DELETE** `v1/{+name}`

Deletes a conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the conversation to delete. |
| `force` | `boolean` | query | No | If set to true, all of this conversation's analyses will also be deleted. Otherwise, the request will only succeed if... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.conversations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.sample`

**POST** `v1/{+parent}/conversations:sample`

Samples conversations based on user configuration and handles the sampled conversations for different use cases.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the dataset. |

**Request body**: `GoogleCloudContactcenterinsightsV1SampleConversationsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.conversations.sample({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.bulkAnalyze`

**POST** `v1/{+parent}/conversations:bulkAnalyze`

Analyzes multiple conversations in a single request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource to create analyses in. |

**Request body**: `GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.conversations.bulkAnalyze({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.bulkDelete`

**POST** `v1/{+parent}/conversations:bulkDelete`

Deletes multiple conversations in a single request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource to delete conversations from. Format: projects/{project}/locations/{location} |

**Request body**: `GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.conversations.bulkDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.ingest`

**POST** `v1/{+parent}/conversations:ingest`

Imports conversations and processes them according to the user's configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for new conversations. |

**Request body**: `GoogleCloudContactcenterinsightsV1IngestConversationsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.conversations.ingest({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.calculateStats`

**GET** `v1/{+location}/conversations:calculateStats`

Gets conversation statistics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location of the conversations. |
| `filter` | `string` | query | No | A filter to reduce results to a specific subset. This field is useful for getting statistics about conversations with... |

**Response**: `GoogleCloudContactcenterinsightsV1CalculateStatsResponse`

```typescript
const res = await contactcenterinsights.conversations.calculateStats({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.analyses.create`

**POST** `v1/{+parent}/analyses`

Creates an analysis. The long running operation is done when the analysis has completed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the analysis. |

**Request body**: `GoogleCloudContactcenterinsightsV1Analysis`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.analyses.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.analyses.get`

**GET** `v1/{+name}`

Gets an analysis.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the analysis to get. |

**Response**: `GoogleCloudContactcenterinsightsV1Analysis`

```typescript
const res = await contactcenterinsights.analyses.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.analyses.list`

**GET** `v1/{+parent}/analyses`

Lists analyses.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the analyses. |
| `filter` | `string` | query | No | A filter to reduce results to a specific subset. Useful for querying conversations with specific properties. |
| `pageSize` | `integer` | query | No | The maximum number of analyses to return in the response. If this value is zero, the service will select a default si... |
| `pageToken` | `string` | query | No | The value returned by the last `ListAnalysesResponse`; indicates that this is a continuation of a prior `ListAnalyses... |

**Response**: `GoogleCloudContactcenterinsightsV1ListAnalysesResponse`

```typescript
const res = await contactcenterinsights.analyses.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.analyses.delete`

**DELETE** `v1/{+name}`

Deletes an analysis.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the analysis to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.analyses.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.segments.bulkAnalyze`

**POST** `v1/{+parent}/segments:bulkAnalyze`

Analyzes multiple conversations in a single request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource to create analyses in. |

**Request body**: `GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.segments.bulkAnalyze({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.feedbackLabels.create`

**POST** `v1/{+parent}/feedbackLabels`

Create feedback label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the feedback label. |
| `feedbackLabelId` | `string` | query | No | Optional. The ID of the feedback label to create. If one is not specified it will be generated by the server. |

**Request body**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

**Response**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

```typescript
const res = await contactcenterinsights.feedbackLabels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.feedbackLabels.list`

**GET** `v1/{+parent}/feedbackLabels`

List feedback labels.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the feedback labels. |
| `filter` | `string` | query | No | Optional. A filter to reduce results to a specific subset. Supports disjunctions (OR) and conjunctions (AND). Automat... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of feedback labels to return in the response. A valid page size ranges from 0 to 100,000... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListFeedbackLabelsResponse`. This value indicates that this is a continuati... |

**Response**: `GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse`

```typescript
const res = await contactcenterinsights.feedbackLabels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.feedbackLabels.get`

**GET** `v1/{+name}`

Get feedback label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the feedback label to get. |

**Response**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

```typescript
const res = await contactcenterinsights.feedbackLabels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.feedbackLabels.patch`

**PATCH** `v1/{+name}`

Update feedback label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Resource name of the FeedbackLabel. Format: projects/{project}/locations/{location}/conversations/{convers... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. |

**Request body**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

**Response**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

```typescript
const res = await contactcenterinsights.feedbackLabels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.feedbackLabels.delete`

**DELETE** `v1/{+name}`

Delete feedback label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the feedback label to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.feedbackLabels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.assessments.create`

**POST** `v1/{+parent}/assessments`

Create Assessment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the assessment. |

**Request body**: `GoogleCloudContactcenterinsightsV1Assessment`

**Response**: `GoogleCloudContactcenterinsightsV1Assessment`

```typescript
const res = await contactcenterinsights.assessments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.assessments.get`

**GET** `v1/{+name}`

Get Assessment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assessment to get. |

**Response**: `GoogleCloudContactcenterinsightsV1Assessment`

```typescript
const res = await contactcenterinsights.assessments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.assessments.list`

**GET** `v1/{+parent}/assessments`

List Assessments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the assessments. To list all assessments in a location, substitute the conversation ... |
| `filter` | `string` | query | No | Optional. A filter to reduce results to a specific subset. Supported filters include: * `state` - The state of the as... |
| `pageSize` | `integer` | query | No | The maximum number of assessments to list. If zero, the service will select a default size. A call may return fewer o... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListAssessmentRulesResponse`; indicates that this is a continuation of a pr... |

**Response**: `GoogleCloudContactcenterinsightsV1ListAssessmentsResponse`

```typescript
const res = await contactcenterinsights.assessments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.assessments.delete`

**DELETE** `v1/{+name}`

Delete an Assessment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assessment to delete. |
| `force` | `boolean` | query | No | Optional. If set to true, all of this assessment's notes will also be deleted. Otherwise, the request will only succe... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.assessments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.assessments.publish`

**POST** `v1/{+name}:publish`

Publish an Assessment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assessment to publish. |

**Request body**: `GoogleCloudContactcenterinsightsV1PublishAssessmentRequest`

**Response**: `GoogleCloudContactcenterinsightsV1Assessment`

```typescript
const res = await contactcenterinsights.assessments.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.assessments.appeal`

**POST** `v1/{+name}:appeal`

Appeal an Assessment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assessment to appeal. |

**Request body**: `GoogleCloudContactcenterinsightsV1AppealAssessmentRequest`

**Response**: `GoogleCloudContactcenterinsightsV1Assessment`

```typescript
const res = await contactcenterinsights.assessments.appeal({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.assessments.finalize`

**POST** `v1/{+name}:finalize`

Finalize an Assessment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assessment to finalize. |

**Request body**: `GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest`

**Response**: `GoogleCloudContactcenterinsightsV1Assessment`

```typescript
const res = await contactcenterinsights.assessments.finalize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.assessments.notes.create`

**POST** `v1/{+parent}/notes`

Create Note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the note. |

**Request body**: `GoogleCloudContactcenterinsightsV1Note`

**Response**: `GoogleCloudContactcenterinsightsV1Note`

```typescript
const res = await contactcenterinsights.notes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.assessments.notes.list`

**GET** `v1/{+parent}/notes`

List Notes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the notes. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of notes to return in the response. If zero the service will select a default size. A ca... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListNotesResponse`. This value indicates that this is a continuation of a p... |

**Response**: `GoogleCloudContactcenterinsightsV1ListNotesResponse`

```typescript
const res = await contactcenterinsights.notes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.assessments.notes.patch`

**PATCH** `v1/{+name}`

Update Note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the note. Format: projects/{project}/locations/{location}/conversations/{conversatio... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. If the update_mask is empty, all updateable fields will be updated. Accep... |

**Request body**: `GoogleCloudContactcenterinsightsV1Note`

**Response**: `GoogleCloudContactcenterinsightsV1Note`

```typescript
const res = await contactcenterinsights.notes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.conversations.assessments.notes.delete`

**DELETE** `v1/{+name}`

Deletes a Note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the note to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.notes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.create`

**POST** `v1/{+parent}/datasets`

Creates a dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the dataset. |
| `datasetId` | `string` | query | No | Optional. The ID to use for the dataset. |

**Request body**: `GoogleCloudContactcenterinsightsV1Dataset`

**Response**: `GoogleCloudContactcenterinsightsV1Dataset`

```typescript
const res = await contactcenterinsights.datasets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.list`

**GET** `v1/{+parent}/datasets`

List datasets matching the input.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the dataset. |
| `filter` | `string` | query | No | Optional. A filter to reduce results to a specific subset. Useful for querying datasets with specific properties. Sup... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of datasets to return in the response. If this value is zero, the service will select a ... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListDatasetsResponse`; indicates that this is a continuation of a prior `Li... |

**Response**: `GoogleCloudContactcenterinsightsV1ListDatasetsResponse`

```typescript
const res = await contactcenterinsights.datasets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.get`

**GET** `v1/{+name}`

Gets a dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the dataset to get. |

**Response**: `GoogleCloudContactcenterinsightsV1Dataset`

```typescript
const res = await contactcenterinsights.datasets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.patch`

**PATCH** `v1/{+name}`

Updates a dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Identifier. Resource name of the dataset. Format: projects/{project}/locations/{location}/datasets/{dataset} |
| `updateMask` | `string` | query | No | Optional. The list of fields to update. |

**Request body**: `GoogleCloudContactcenterinsightsV1Dataset`

**Response**: `GoogleCloudContactcenterinsightsV1Dataset`

```typescript
const res = await contactcenterinsights.datasets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.delete`

**DELETE** `v1/{+name}`

Delete a dataset.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the dataset to delete. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.datasets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.listAllFeedbackLabels`

**GET** `v1/{+parent}:listAllFeedbackLabels`

List all feedback labels by project number.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of all feedback labels per project. |
| `filter` | `string` | query | No | Optional. A filter to reduce results to a specific subset in the entire project. Supports disjunctions (OR) and conju... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of feedback labels to return in the response. A valid page size ranges from 0 to 100,000... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListAllFeedbackLabelsResponse`. This value indicates that this is a continu... |

**Response**: `GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse`

```typescript
const res = await contactcenterinsights.datasets.listAllFeedbackLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.bulkUploadFeedbackLabels`

**POST** `v1/{+parent}:bulkUploadFeedbackLabels`

Upload feedback labels from an external source in bulk. Currently supports labeling Quality AI example conversations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for new feedback labels. |

**Request body**: `GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.datasets.bulkUploadFeedbackLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.bulkDownloadFeedbackLabels`

**POST** `v1/{+parent}:bulkDownloadFeedbackLabels`

Download feedback labels in bulk from an external source. Currently supports exporting Quality AI example conversations with transcripts and question bodies.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for new feedback labels. |

**Request body**: `GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.datasets.bulkDownloadFeedbackLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.bulkDeleteFeedbackLabels`

**POST** `v1/{+parent}:bulkDeleteFeedbackLabels`

Delete feedback labels in bulk using a filter.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for new feedback labels. |

**Request body**: `GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.datasets.bulkDeleteFeedbackLabels({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.get`

**GET** `v1/{+name}`

Gets a conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the conversation to get. |
| `view` | `string` | query | No | The level of details of the conversation. Default is `FULL`. |

**Response**: `GoogleCloudContactcenterinsightsV1Conversation`

```typescript
const res = await contactcenterinsights.conversations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.list`

**GET** `v1/{+parent}/conversations`

Lists conversations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the conversation. |
| `filter` | `string` | query | No | A filter to reduce results to a specific subset. Useful for querying conversations with specific properties. |
| `orderBy` | `string` | query | No | Optional. The attribute by which to order conversations in the response. If empty, conversations will be ordered by d... |
| `pageSize` | `integer` | query | No | The maximum number of conversations to return in the response. A valid page size ranges from 0 to 100,000 inclusive. ... |
| `pageToken` | `string` | query | No | The value returned by the last `ListConversationsResponse`. This value indicates that this is a continuation of a pri... |
| `view` | `string` | query | No | The level of details of the conversation. Default is `BASIC`. |

**Response**: `GoogleCloudContactcenterinsightsV1ListConversationsResponse`

```typescript
const res = await contactcenterinsights.conversations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.generateSignedAudio`

**GET** `v1/{+name}:generateSignedAudio`

Gets the signed URI for the audio for the given conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the conversation to sign. |

**Response**: `GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse`

```typescript
const res = await contactcenterinsights.conversations.generateSignedAudio({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.delete`

**DELETE** `v1/{+name}`

Deletes a conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the conversation to delete. |
| `force` | `boolean` | query | No | If set to true, all of this conversation's analyses will also be deleted. Otherwise, the request will only succeed if... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.conversations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.sample`

**POST** `v1/{+parent}/conversations:sample`

Samples conversations based on user configuration and handles the sampled conversations for different use cases.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the dataset. |

**Request body**: `GoogleCloudContactcenterinsightsV1SampleConversationsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.conversations.sample({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.bulkDelete`

**POST** `v1/{+parent}/conversations:bulkDelete`

Deletes multiple conversations in a single request.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource to delete conversations from. Format: projects/{project}/locations/{location} |

**Request body**: `GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.conversations.bulkDelete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.ingest`

**POST** `v1/{+parent}/conversations:ingest`

Imports conversations and processes them according to the user's configuration.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for new conversations. |

**Request body**: `GoogleCloudContactcenterinsightsV1IngestConversationsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.conversations.ingest({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.calculateStats`

**POST** `v1/{+location}/conversations:calculateStats`

Gets conversation statistics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location of the conversations. |

**Request body**: `GoogleCloudContactcenterinsightsV1CalculateStatsRequest`

**Response**: `GoogleCloudContactcenterinsightsV1CalculateStatsResponse`

```typescript
const res = await contactcenterinsights.conversations.calculateStats({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.feedbackLabels.create`

**POST** `v1/{+parent}/feedbackLabels`

Create feedback label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the feedback label. |
| `feedbackLabelId` | `string` | query | No | Optional. The ID of the feedback label to create. If one is not specified it will be generated by the server. |

**Request body**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

**Response**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

```typescript
const res = await contactcenterinsights.feedbackLabels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.feedbackLabels.list`

**GET** `v1/{+parent}/feedbackLabels`

List feedback labels.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the feedback labels. |
| `filter` | `string` | query | No | Optional. A filter to reduce results to a specific subset. Supports disjunctions (OR) and conjunctions (AND). Automat... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of feedback labels to return in the response. A valid page size ranges from 0 to 100,000... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListFeedbackLabelsResponse`. This value indicates that this is a continuati... |

**Response**: `GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse`

```typescript
const res = await contactcenterinsights.feedbackLabels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.feedbackLabels.get`

**GET** `v1/{+name}`

Get feedback label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the feedback label to get. |

**Response**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

```typescript
const res = await contactcenterinsights.feedbackLabels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.feedbackLabels.patch`

**PATCH** `v1/{+name}`

Update feedback label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Resource name of the FeedbackLabel. Format: projects/{project}/locations/{location}/conversations/{convers... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. |

**Request body**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

**Response**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

```typescript
const res = await contactcenterinsights.feedbackLabels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.conversations.feedbackLabels.delete`

**DELETE** `v1/{+name}`

Delete feedback label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the feedback label to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.feedbackLabels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.datasets.insightsdata.export`

**POST** `v1/{+parent}/insightsdata:export`

Export insights data to a destination defined in the request body.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource to export data from. |

**Request body**: `GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.insightsdata.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.insightsdata.export`

**POST** `v1/{+parent}/insightsdata:export`

Export insights data to a destination defined in the request body.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource to export data from. |

**Request body**: `GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.insightsdata.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.create`

**POST** `v1/{+parent}/issueModels`

Creates an issue model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the issue model. |

**Request body**: `GoogleCloudContactcenterinsightsV1IssueModel`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.issueModels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.patch`

**PATCH** `v1/{+name}`

Updates an issue model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/issueModels/{issue_m... |
| `updateMask` | `string` | query | No | The list of fields to be updated. |

**Request body**: `GoogleCloudContactcenterinsightsV1IssueModel`

**Response**: `GoogleCloudContactcenterinsightsV1IssueModel`

```typescript
const res = await contactcenterinsights.issueModels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.get`

**GET** `v1/{+name}`

Gets an issue model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the issue model to get. |

**Response**: `GoogleCloudContactcenterinsightsV1IssueModel`

```typescript
const res = await contactcenterinsights.issueModels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.list`

**GET** `v1/{+parent}/issueModels`

Lists issue models.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the issue model. |

**Response**: `GoogleCloudContactcenterinsightsV1ListIssueModelsResponse`

```typescript
const res = await contactcenterinsights.issueModels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.delete`

**DELETE** `v1/{+name}`

Deletes an issue model.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the issue model to delete. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.issueModels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.deploy`

**POST** `v1/{+name}:deploy`

Deploys an issue model. Returns an error if a model is already deployed. An issue model can only be used in analysis after it has been deployed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The issue model to deploy. |

**Request body**: `GoogleCloudContactcenterinsightsV1DeployIssueModelRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.issueModels.deploy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.undeploy`

**POST** `v1/{+name}:undeploy`

Undeploys an issue model. An issue model can not be used in analysis after it has been undeployed.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The issue model to undeploy. |

**Request body**: `GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.issueModels.undeploy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.export`

**POST** `v1/{+name}:export`

Exports an issue model to the provided destination.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The issue model to export. |

**Request body**: `GoogleCloudContactcenterinsightsV1ExportIssueModelRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.issueModels.export({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.import`

**POST** `v1/{+parent}/issueModels:import`

Imports an issue model from a Cloud Storage bucket.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the issue model. |

**Request body**: `GoogleCloudContactcenterinsightsV1ImportIssueModelRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.issueModels.import({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.calculateIssueModelStats`

**GET** `v1/{+issueModel}:calculateIssueModelStats`

Gets an issue model's statistics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `issueModel` | `string` | path | Yes | Required. The resource name of the issue model to query against. |

**Response**: `GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse`

```typescript
const res = await contactcenterinsights.issueModels.calculateIssueModelStats({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.issues.get`

**GET** `v1/{+name}`

Gets an issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the issue to get. |

**Response**: `GoogleCloudContactcenterinsightsV1Issue`

```typescript
const res = await contactcenterinsights.issues.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.issues.list`

**GET** `v1/{+parent}/issues`

Lists issues.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the issue. |

**Response**: `GoogleCloudContactcenterinsightsV1ListIssuesResponse`

```typescript
const res = await contactcenterinsights.issues.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.issues.patch`

**PATCH** `v1/{+name}`

Updates an issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the issue. Format: projects/{project}/locations/{location}/issueModels/{issue_model}/... |
| `updateMask` | `string` | query | No | The list of fields to be updated. |

**Request body**: `GoogleCloudContactcenterinsightsV1Issue`

**Response**: `GoogleCloudContactcenterinsightsV1Issue`

```typescript
const res = await contactcenterinsights.issues.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.issues.create`

**POST** `v1/{+parent}/issues`

Creates an issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the issue. |

**Request body**: `GoogleCloudContactcenterinsightsV1Issue`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.issues.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.issueModels.issues.delete`

**DELETE** `v1/{+name}`

Deletes an issue.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the issue to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.issues.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.phraseMatchers.create`

**POST** `v1/{+parent}/phraseMatchers`

Creates a phrase matcher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the phrase matcher. Required. The location to create a phrase matcher for. Format: `... |

**Request body**: `GoogleCloudContactcenterinsightsV1PhraseMatcher`

**Response**: `GoogleCloudContactcenterinsightsV1PhraseMatcher`

```typescript
const res = await contactcenterinsights.phraseMatchers.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.phraseMatchers.get`

**GET** `v1/{+name}`

Gets a phrase matcher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the phrase matcher to get. |

**Response**: `GoogleCloudContactcenterinsightsV1PhraseMatcher`

```typescript
const res = await contactcenterinsights.phraseMatchers.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.phraseMatchers.list`

**GET** `v1/{+parent}/phraseMatchers`

Lists phrase matchers.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the phrase matcher. |
| `filter` | `string` | query | No | A filter to reduce results to a specific subset. Useful for querying phrase matchers with specific properties. |
| `pageSize` | `integer` | query | No | The maximum number of phrase matchers to return in the response. If this value is zero, the service will select a def... |
| `pageToken` | `string` | query | No | The value returned by the last `ListPhraseMatchersResponse`. This value indicates that this is a continuation of a pr... |

**Response**: `GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse`

```typescript
const res = await contactcenterinsights.phraseMatchers.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.phraseMatchers.delete`

**DELETE** `v1/{+name}`

Deletes a phrase matcher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the phrase matcher to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.phraseMatchers.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.phraseMatchers.patch`

**PATCH** `v1/{+name}`

Updates a phrase matcher.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMatchers/{phrase_matcher} |
| `updateMask` | `string` | query | No | The list of fields to be updated. |

**Request body**: `GoogleCloudContactcenterinsightsV1PhraseMatcher`

**Response**: `GoogleCloudContactcenterinsightsV1PhraseMatcher`

```typescript
const res = await contactcenterinsights.phraseMatchers.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.analysisRules.create`

**POST** `v1/{+parent}/analysisRules`

Creates a analysis rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the analysis rule. Required. The location to create a analysis rule for. Format: `pr... |

**Request body**: `GoogleCloudContactcenterinsightsV1AnalysisRule`

**Response**: `GoogleCloudContactcenterinsightsV1AnalysisRule`

```typescript
const res = await contactcenterinsights.analysisRules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.analysisRules.get`

**GET** `v1/{+name}`

Get a analysis rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the AnalysisRule to get. |

**Response**: `GoogleCloudContactcenterinsightsV1AnalysisRule`

```typescript
const res = await contactcenterinsights.analysisRules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.analysisRules.list`

**GET** `v1/{+parent}/analysisRules`

Lists analysis rules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the analysis rules. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of analysis rule to return in the response. If this value is zero, the service will sele... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListAnalysisRulesResponse`; indicates that this is a continuation of a prio... |

**Response**: `GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse`

```typescript
const res = await contactcenterinsights.analysisRules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.analysisRules.patch`

**PATCH** `v1/{+name}`

Updates a analysis rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the analysis rule. Format: projects/{project}/locations/{location}/analysisRules/{an... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. If the update_mask is not provided, the update will be applied to all fie... |

**Request body**: `GoogleCloudContactcenterinsightsV1AnalysisRule`

**Response**: `GoogleCloudContactcenterinsightsV1AnalysisRule`

```typescript
const res = await contactcenterinsights.analysisRules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.analysisRules.delete`

**DELETE** `v1/{+name}`

Deletes a analysis rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the analysis rule to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.analysisRules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.autoLabelingRules.list`

**GET** `v1/{+parent}/autoLabelingRules`

Lists auto labeling rules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location to list auto labeling rules from. Format: projects/{project}/locations/{location} |
| `pageSize` | `integer` | query | No | Optional. The maximum number of auto labeling rules to return in a single response. If unspecified, at most 100 rules... |
| `pageToken` | `string` | query | No | Optional. The next_page_token value returned from a previous List request, if any. |

**Response**: `GoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse`

```typescript
const res = await contactcenterinsights.autoLabelingRules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.autoLabelingRules.get`

**GET** `v1/{+name}`

Gets an auto labeling rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the auto labeling rule to get. Format: projects/{project}/locations/{location}/autoLabelingRule... |

**Response**: `GoogleCloudContactcenterinsightsV1AutoLabelingRule`

```typescript
const res = await contactcenterinsights.autoLabelingRules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.autoLabelingRules.create`

**POST** `v1/{+parent}/autoLabelingRules`

Creates an auto labeling rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The project and location to create the auto labeling rule in. Format: projects/{project}/locations/{location} |
| `autoLabelingRuleId` | `string` | query | No | Required. The ID to use for the auto labeling rule, which will become the final component of the auto labeling rule's... |

**Request body**: `GoogleCloudContactcenterinsightsV1AutoLabelingRule`

**Response**: `GoogleCloudContactcenterinsightsV1AutoLabelingRule`

```typescript
const res = await contactcenterinsights.autoLabelingRules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.autoLabelingRules.patch`

**PATCH** `v1/{+name}`

Updates an auto labeling rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the auto-labeling rule. Format: projects/{project}/locations/{location}/autoLabeling... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. |

**Request body**: `GoogleCloudContactcenterinsightsV1AutoLabelingRule`

**Response**: `GoogleCloudContactcenterinsightsV1AutoLabelingRule`

```typescript
const res = await contactcenterinsights.autoLabelingRules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.autoLabelingRules.delete`

**DELETE** `v1/{+name}`

Deletes an auto labeling rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the auto labeling rule to delete. Format: projects/{project}/locations/{location}/autoLabelingR... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.autoLabelingRules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.autoLabelingRules.test`

**POST** `v1/{+parent}/autoLabelingRules:test`

Tests auto labeling rules against a conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent project and location. Format: projects/{project}/locations/{location} |

**Request body**: `GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest`

**Response**: `GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse`

```typescript
const res = await contactcenterinsights.autoLabelingRules.test({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.assessmentRules.create`

**POST** `v1/{+parent}/assessmentRules`

Creates an assessment rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the assessment rule. Required. The location to create a assessment rule for. Format:... |
| `assessmentRuleId` | `string` | query | No | Optional. A unique ID for the new AssessmentRule. This ID will become the final component of the AssessmentRule's res... |

**Request body**: `GoogleCloudContactcenterinsightsV1AssessmentRule`

**Response**: `GoogleCloudContactcenterinsightsV1AssessmentRule`

```typescript
const res = await contactcenterinsights.assessmentRules.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.assessmentRules.get`

**GET** `v1/{+name}`

Get an assessment rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assessment rule to get. |

**Response**: `GoogleCloudContactcenterinsightsV1AssessmentRule`

```typescript
const res = await contactcenterinsights.assessmentRules.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.assessmentRules.list`

**GET** `v1/{+parent}/assessmentRules`

Lists assessment rules.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the assessment rules. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of assessment rule to return in the response. If this value is zero, the service will se... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListAssessmentRulesResponse`; indicates that this is a continuation of a pr... |

**Response**: `GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse`

```typescript
const res = await contactcenterinsights.assessmentRules.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.assessmentRules.patch`

**PATCH** `v1/{+name}`

Updates an assessment rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the assessment rule. Format: projects/{project}/locations/{location}/assessmentRules... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. If the update_mask is not provided, the update will be applied to all fie... |

**Request body**: `GoogleCloudContactcenterinsightsV1AssessmentRule`

**Response**: `GoogleCloudContactcenterinsightsV1AssessmentRule`

```typescript
const res = await contactcenterinsights.assessmentRules.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.assessmentRules.delete`

**DELETE** `v1/{+name}`

Deletes an assessment rule.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assessment rule to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.assessmentRules.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.encryptionSpec.initialize`

**POST** `v1/{+name}:initialize`

Initializes a location-level encryption key specification. An error will result if the location has resources already created before the initialization. After the encryption specification is initialized at a location, it is immutable and all newly created resources under the location will be encrypted with the existing specification.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the encryption key specification resource. Format: projects/{project}/locations/{loca... |

**Request body**: `GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.encryptionSpec.initialize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.views.create`

**POST** `v1/{+parent}/views`

Creates a view.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the view. Required. The location to create a view for. Format: `projects//locations/... |

**Request body**: `GoogleCloudContactcenterinsightsV1View`

**Response**: `GoogleCloudContactcenterinsightsV1View`

```typescript
const res = await contactcenterinsights.views.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.views.get`

**GET** `v1/{+name}`

Gets a view.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the view to get. |

**Response**: `GoogleCloudContactcenterinsightsV1View`

```typescript
const res = await contactcenterinsights.views.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.views.list`

**GET** `v1/{+parent}/views`

Lists views.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the views. |
| `pageSize` | `integer` | query | No | The maximum number of views to return in the response. If this value is zero, the service will select a default size.... |
| `pageToken` | `string` | query | No | The value returned by the last `ListViewsResponse`; indicates that this is a continuation of a prior `ListViews` call... |

**Response**: `GoogleCloudContactcenterinsightsV1ListViewsResponse`

```typescript
const res = await contactcenterinsights.views.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.views.patch`

**PATCH** `v1/{+name}`

Updates a view.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{view} |
| `updateMask` | `string` | query | No | The list of fields to be updated. |

**Request body**: `GoogleCloudContactcenterinsightsV1View`

**Response**: `GoogleCloudContactcenterinsightsV1View`

```typescript
const res = await contactcenterinsights.views.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.views.delete`

**DELETE** `v1/{+name}`

Deletes a view.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the view to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.views.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaQuestionTags.create`

**POST** `v1/{+parent}/qaQuestionTags`

Creates a QaQuestionTag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the QaQuestionTag. |
| `qaQuestionTagId` | `string` | query | No | Optional. A unique ID for the new QaQuestionTag. This ID will become the final component of the QaQuestionTag's resou... |

**Request body**: `GoogleCloudContactcenterinsightsV1QaQuestionTag`

**Response**: `GoogleCloudContactcenterinsightsV1QaQuestionTag`

```typescript
const res = await contactcenterinsights.qaQuestionTags.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaQuestionTags.get`

**GET** `v1/{+name}`

Gets a QaQuestionTag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the QaQuestionTag to get. |

**Response**: `GoogleCloudContactcenterinsightsV1QaQuestionTag`

```typescript
const res = await contactcenterinsights.qaQuestionTags.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaQuestionTags.patch`

**PATCH** `v1/{+name}`

Updates a QaQuestionTag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Resource name for the QaQuestionTag Format projects/{project}/locations/{location}/qaQuestionTags/{qa_que... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. All possible fields can be updated by passing `*`, or a subset of the fol... |

**Request body**: `GoogleCloudContactcenterinsightsV1QaQuestionTag`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.qaQuestionTags.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaQuestionTags.delete`

**DELETE** `v1/{+name}`

Deletes a QaQuestionTag.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the QaQuestionTag to delete. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.qaQuestionTags.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaQuestionTags.list`

**GET** `v1/{+parent}/qaQuestionTags`

Lists the question tags.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the QaQuestionTags. |
| `filter` | `string` | query | No | Optional. A filter to reduce results to a specific subset. Supports conjunctions (ie. AND operators). Supported field... |

**Response**: `GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse`

```typescript
const res = await contactcenterinsights.qaQuestionTags.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.create`

**POST** `v1/{+parent}/qaScorecards`

Create a QaScorecard.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the QaScorecard. |
| `qaScorecardId` | `string` | query | No | Optional. A unique ID for the new QaScorecard. This ID will become the final component of the QaScorecard's resource ... |

**Request body**: `GoogleCloudContactcenterinsightsV1QaScorecard`

**Response**: `GoogleCloudContactcenterinsightsV1QaScorecard`

```typescript
const res = await contactcenterinsights.qaScorecards.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.get`

**GET** `v1/{+name}`

Gets a QaScorecard.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the QaScorecard to get. |

**Response**: `GoogleCloudContactcenterinsightsV1QaScorecard`

```typescript
const res = await contactcenterinsights.qaScorecards.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.patch`

**PATCH** `v1/{+name}`

Updates a QaScorecard.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The scorecard name. Format: projects/{project}/locations/{location}/qaScorecards/{qa_scorecard} |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. All possible fields can be updated by passing `*`, or a subset of the fol... |

**Request body**: `GoogleCloudContactcenterinsightsV1QaScorecard`

**Response**: `GoogleCloudContactcenterinsightsV1QaScorecard`

```typescript
const res = await contactcenterinsights.qaScorecards.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.delete`

**DELETE** `v1/{+name}`

Deletes a QaScorecard.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the QaScorecard to delete. |
| `force` | `boolean` | query | No | Optional. If set to true, all of this QaScorecard's child resources will also be deleted. Otherwise, the request will... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.qaScorecards.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.list`

**GET** `v1/{+parent}/qaScorecards`

Lists QaScorecards.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the scorecards. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of scorecards to return in the response. If the value is zero, the service will select a... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListQaScorecardsResponse`. This value indicates that this is a continuation... |
| `qaScorecardSources` | `string` | query | No | Optional. The source of scorecards are based on how those Scorecards were created, e.g., a customer-defined scorecard... |

**Response**: `GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse`

```typescript
const res = await contactcenterinsights.qaScorecards.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.revisions.create`

**POST** `v1/{+parent}/revisions`

Creates a QaScorecardRevision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the QaScorecardRevision. |
| `qaScorecardRevisionId` | `string` | query | No | Optional. A unique ID for the new QaScorecardRevision. This ID will become the final component of the QaScorecardRevi... |

**Request body**: `GoogleCloudContactcenterinsightsV1QaScorecardRevision`

**Response**: `GoogleCloudContactcenterinsightsV1QaScorecardRevision`

```typescript
const res = await contactcenterinsights.revisions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.revisions.get`

**GET** `v1/{+name}`

Gets a QaScorecardRevision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the QaScorecardRevision to get. |

**Response**: `GoogleCloudContactcenterinsightsV1QaScorecardRevision`

```typescript
const res = await contactcenterinsights.revisions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.revisions.tuneQaScorecardRevision`

**POST** `v1/{+parent}:tuneQaScorecardRevision`

Fine tune one or more QaModels.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource for new fine tuning job instance. |

**Request body**: `GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.revisions.tuneQaScorecardRevision({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.revisions.deploy`

**POST** `v1/{+name}:deploy`

Deploy a QaScorecardRevision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the QaScorecardRevision to deploy. |

**Request body**: `GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest`

**Response**: `GoogleCloudContactcenterinsightsV1QaScorecardRevision`

```typescript
const res = await contactcenterinsights.revisions.deploy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.revisions.undeploy`

**POST** `v1/{+name}:undeploy`

Undeploy a QaScorecardRevision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the QaScorecardRevision to undeploy. |

**Request body**: `GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest`

**Response**: `GoogleCloudContactcenterinsightsV1QaScorecardRevision`

```typescript
const res = await contactcenterinsights.revisions.undeploy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.revisions.delete`

**DELETE** `v1/{+name}`

Deletes a QaScorecardRevision.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the QaScorecardRevision to delete. |
| `force` | `boolean` | query | No | Optional. If set to true, all of this QaScorecardRevision's child resources will also be deleted. Otherwise, the requ... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.revisions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.revisions.list`

**GET** `v1/{+parent}/revisions`

Lists all revisions under the parent QaScorecard.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the scorecard revisions. To list all revisions of all scorecards, substitute the QaS... |
| `filter` | `string` | query | No | Optional. A filter to reduce results to a specific subset. Useful for querying scorecard revisions with specific prop... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of scorecard revisions to return in the response. If the value is zero, the service will... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListQaScorecardRevisionsResponse`. This value indicates that this is a cont... |
| `qaScorecardSources` | `string` | query | No | Optional. The source of scorecards are based on how those Scorecards were created, e.g., a customer-defined scorecard... |

**Response**: `GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse`

```typescript
const res = await contactcenterinsights.revisions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.revisions.qaQuestions.create`

**POST** `v1/{+parent}/qaQuestions`

Create a QaQuestion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the QaQuestion. |
| `qaQuestionId` | `string` | query | No | Optional. A unique ID for the new question. This ID will become the final component of the question's resource name. ... |

**Request body**: `GoogleCloudContactcenterinsightsV1QaQuestion`

**Response**: `GoogleCloudContactcenterinsightsV1QaQuestion`

```typescript
const res = await contactcenterinsights.qaQuestions.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.revisions.qaQuestions.get`

**GET** `v1/{+name}`

Gets a QaQuestion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the QaQuestion to get. |

**Response**: `GoogleCloudContactcenterinsightsV1QaQuestion`

```typescript
const res = await contactcenterinsights.qaQuestions.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.revisions.qaQuestions.patch`

**PATCH** `v1/{+name}`

Updates a QaQuestion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the question. Format: projects/{project}/locations/{location}/qaScorecards/{qa_score... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. All possible fields can be updated by passing `*`, or a subset of the fol... |

**Request body**: `GoogleCloudContactcenterinsightsV1QaQuestion`

**Response**: `GoogleCloudContactcenterinsightsV1QaQuestion`

```typescript
const res = await contactcenterinsights.qaQuestions.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.revisions.qaQuestions.delete`

**DELETE** `v1/{+name}`

Deletes a QaQuestion.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the QaQuestion to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.qaQuestions.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.qaScorecards.revisions.qaQuestions.list`

**GET** `v1/{+parent}/qaQuestions`

Lists QaQuestions.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the questions. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of questions to return in the response. If the value is zero, the service will select a ... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListQaQuestionsResponse`. This value indicates that this is a continuation ... |

**Response**: `GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse`

```typescript
const res = await contactcenterinsights.qaQuestions.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.create`

**POST** `v1/{+parent}/authorizedViewSets`

Create AuthorizedViewSet

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the AuthorizedViewSet. |
| `authorizedViewSetId` | `string` | query | No | Optional. A unique ID for the new AuthorizedViewSet. This ID will become the final component of the AuthorizedViewSet... |

**Request body**: `GoogleCloudContactcenterinsightsV1AuthorizedViewSet`

**Response**: `GoogleCloudContactcenterinsightsV1AuthorizedViewSet`

```typescript
const res = await contactcenterinsights.authorizedViewSets.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.get`

**GET** `v1/{+name}`

Get AuthorizedViewSet

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the AuthorizedViewSet to get. |

**Response**: `GoogleCloudContactcenterinsightsV1AuthorizedViewSet`

```typescript
const res = await contactcenterinsights.authorizedViewSets.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.list`

**GET** `v1/{+parent}/authorizedViewSets`

List AuthorizedViewSets

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the AuthorizedViewSets. |
| `filter` | `string` | query | No | Optional. The filter expression to filter authorized view sets listed in the response. |
| `orderBy` | `string` | query | No | Optional. The order by expression to order authorized view sets listed in the response. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of view sets to return in the response. If the value is zero, the service will select a ... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListAuthorizedViewSetsResponse`. This value indicates that this is a contin... |

**Response**: `GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse`

```typescript
const res = await contactcenterinsights.authorizedViewSets.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.patch`

**PATCH** `v1/{+name}`

Updates an AuthorizedViewSet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the AuthorizedViewSet. Format: projects/{project}/locations/{location}/authorizedVie... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. All possible fields can be updated by passing `*`, or a subset of the fol... |

**Request body**: `GoogleCloudContactcenterinsightsV1AuthorizedViewSet`

**Response**: `GoogleCloudContactcenterinsightsV1AuthorizedViewSet`

```typescript
const res = await contactcenterinsights.authorizedViewSets.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.delete`

**DELETE** `v1/{+name}`

Deletes an AuthorizedViewSet.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the AuthorizedViewSet to delete. |
| `force` | `boolean` | query | No | Optional. If set to true, all of this AuthorizedViewSet's child resources will also be deleted. Otherwise, the reques... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.authorizedViewSets.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.setIamPolicy`

**POST** `v1/{+resource}:setIamPolicy`

Sets the access control policy on the specified resource. Replaces any existing policy. Can return `NOT_FOUND`, `INVALID_ARGUMENT`, and `PERMISSION_DENIED` errors.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being specified. See [Resource names](https://cloud.google.com/apis/de... |

**Request body**: `GoogleIamV1SetIamPolicyRequest`

**Response**: `GoogleIamV1Policy`

```typescript
const res = await contactcenterinsights.authorizedViews.setIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.getIamPolicy`

**GET** `v1/{+resource}:getIamPolicy`

Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy is being requested. See [Resource names](https://cloud.google.com/apis/de... |
| `options.requestedPolicyVersion` | `integer` | query | No | Optional. The maximum policy version that will be used to format the policy. Valid values are 0, 1, and 3. Requests s... |

**Response**: `GoogleIamV1Policy`

```typescript
const res = await contactcenterinsights.authorizedViews.getIamPolicy({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.testIamPermissions`

**POST** `v1/{+resource}:testIamPermissions`

Returns permissions that a caller has on the specified resource. If the resource does not exist, this will return an empty set of permissions, not a `NOT_FOUND` error. Note: This operation is designed to be used for building permission-aware UIs and command-line tools, not for authorization checking. This operation may "fail open" without warning.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `resource` | `string` | path | Yes | REQUIRED: The resource for which the policy detail is being requested. See [Resource names](https://cloud.google.com/... |

**Request body**: `GoogleIamV1TestIamPermissionsRequest`

**Response**: `GoogleIamV1TestIamPermissionsResponse`

```typescript
const res = await contactcenterinsights.authorizedViews.testIamPermissions({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.queryMetrics`

**POST** `v1/{+location}:queryMetrics`

Query metrics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location of the data. "projects/{project}/locations/{location}" |

**Request body**: `GoogleCloudContactcenterinsightsV1QueryMetricsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.authorizedViews.queryMetrics({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.generativeInsights`

**POST** `v1/{+location}:generativeInsights`

Natural language based Insights which powers the next generation of dashboards in Insights. Next generation of QueryMetrics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location of the data. "projects/{project}/locations/{location}" |

**Request body**: `GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.authorizedViews.generativeInsights({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.queryPerformanceOverview`

**POST** `v1/{+parent}:queryPerformanceOverview`

Generates a summary of predefined performance metrics for a set of conversations. Conversations can be specified by specifying a time window and an agent id, for now. The summary includes a comparison of metrics computed for conversations in the previous time period, and also a comparison with peers in the same time period.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the conversations to derive performance stats from. "projects/{project}/locations/{l... |

**Request body**: `GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest`

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.authorizedViews.queryPerformanceOverview({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.create`

**POST** `v1/{+parent}/authorizedViews`

Create AuthorizedView

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the AuthorizedView. |
| `authorizedViewId` | `string` | query | No | Optional. A unique ID for the new AuthorizedView. This ID will become the final component of the AuthorizedView's res... |

**Request body**: `GoogleCloudContactcenterinsightsV1AuthorizedView`

**Response**: `GoogleCloudContactcenterinsightsV1AuthorizedView`

```typescript
const res = await contactcenterinsights.authorizedViews.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.get`

**GET** `v1/{+name}`

Get AuthorizedView

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the AuthorizedView to get. |

**Response**: `GoogleCloudContactcenterinsightsV1AuthorizedView`

```typescript
const res = await contactcenterinsights.authorizedViews.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.list`

**GET** `v1/{+parent}/authorizedViews`

List AuthorizedViewSets

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the AuthorizedViews. If the parent is set to `-`, all AuthorizedViews under the loca... |
| `filter` | `string` | query | No | Optional. The filter expression to filter authorized views listed in the response. |
| `orderBy` | `string` | query | No | Optional. The order by expression to order authorized views listed in the response. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of view to return in the response. If the value is zero, the service will select a defau... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListAuthorizedViewsResponse`. This value indicates that this is a continuat... |

**Response**: `GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse`

```typescript
const res = await contactcenterinsights.authorizedViews.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.search`

**GET** `v1/{+parent}/authorizedViews:search`

SearchAuthorizedViewSets

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the AuthorizedViews. If the parent is set to `-`, all AuthorizedViews under the loca... |
| `orderBy` | `string` | query | No | Optional. The order by expression to order authorized views listed in the response. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of view to return in the response. If the value is zero, the service will select a defau... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListAuthorizedViewsResponse`. This value indicates that this is a continuat... |
| `query` | `string` | query | No | Optional. The query expression to search authorized views. |

**Response**: `GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse`

```typescript
const res = await contactcenterinsights.authorizedViews.search({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.patch`

**PATCH** `v1/{+name}`

Updates an AuthorizedView.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the AuthorizedView. Format: projects/{project}/locations/{location}/authorizedViewSe... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. All possible fields can be updated by passing `*`, or a subset of the fol... |

**Request body**: `GoogleCloudContactcenterinsightsV1AuthorizedView`

**Response**: `GoogleCloudContactcenterinsightsV1AuthorizedView`

```typescript
const res = await contactcenterinsights.authorizedViews.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.delete`

**DELETE** `v1/{+name}`

Deletes an AuthorizedView.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the AuthorizedView to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.authorizedViews.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.operations.list`

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

**Response**: `GoogleLongrunningListOperationsResponse`

```typescript
const res = await contactcenterinsights.operations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.operations.get`

**GET** `v1/{+name}`

Gets the latest state of a long-running operation. Clients can use this method to poll the operation result at intervals as recommended by the API service.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource. |

**Response**: `GoogleLongrunningOperation`

```typescript
const res = await contactcenterinsights.operations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.operations.cancel`

**POST** `v1/{+name}:cancel`

Starts asynchronous cancellation on a long-running operation. The server makes a best effort to cancel the operation, but success is not guaranteed. If the server doesn't support this method, it returns `google.rpc.Code.UNIMPLEMENTED`. Clients can use Operations.GetOperation or other methods to check whether the cancellation succeeded or whether the operation completed despite cancellation. On successful cancellation, the operation is not deleted; instead, it becomes an operation with an Operation.error value with a google.rpc.Status.code of `1`, corresponding to `Code.CANCELLED`.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | The name of the operation resource to be cancelled. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.operations.cancel({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.get`

**GET** `v1/{+name}`

Gets a conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the conversation to get. |
| `view` | `string` | query | No | The level of details of the conversation. Default is `FULL`. |

**Response**: `GoogleCloudContactcenterinsightsV1Conversation`

```typescript
const res = await contactcenterinsights.conversations.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.list`

**GET** `v1/{+parent}/conversations`

Lists conversations.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the conversation. |
| `filter` | `string` | query | No | A filter to reduce results to a specific subset. Useful for querying conversations with specific properties. |
| `orderBy` | `string` | query | No | Optional. The attribute by which to order conversations in the response. If empty, conversations will be ordered by d... |
| `pageSize` | `integer` | query | No | The maximum number of conversations to return in the response. A valid page size ranges from 0 to 100,000 inclusive. ... |
| `pageToken` | `string` | query | No | The value returned by the last `ListConversationsResponse`. This value indicates that this is a continuation of a pri... |
| `view` | `string` | query | No | The level of details of the conversation. Default is `BASIC`. |

**Response**: `GoogleCloudContactcenterinsightsV1ListConversationsResponse`

```typescript
const res = await contactcenterinsights.conversations.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.generateSignedAudio`

**GET** `v1/{+name}:generateSignedAudio`

Gets the signed URI for the audio for the given conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the conversation to sign. |

**Response**: `GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse`

```typescript
const res = await contactcenterinsights.conversations.generateSignedAudio({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.delete`

**DELETE** `v1/{+name}`

Deletes a conversation.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the conversation to delete. |
| `force` | `boolean` | query | No | If set to true, all of this conversation's analyses will also be deleted. Otherwise, the request will only succeed if... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.conversations.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.calculateStats`

**GET** `v1/{+location}/conversations:calculateStats`

Gets conversation statistics.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `location` | `string` | path | Yes | Required. The location of the conversations. |
| `filter` | `string` | query | No | A filter to reduce results to a specific subset. This field is useful for getting statistics about conversations with... |

**Response**: `GoogleCloudContactcenterinsightsV1CalculateStatsResponse`

```typescript
const res = await contactcenterinsights.conversations.calculateStats({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.feedbackLabels.create`

**POST** `v1/{+parent}/feedbackLabels`

Create feedback label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the feedback label. |
| `feedbackLabelId` | `string` | query | No | Optional. The ID of the feedback label to create. If one is not specified it will be generated by the server. |

**Request body**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

**Response**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

```typescript
const res = await contactcenterinsights.feedbackLabels.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.feedbackLabels.list`

**GET** `v1/{+parent}/feedbackLabels`

List feedback labels.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the feedback labels. |
| `filter` | `string` | query | No | Optional. A filter to reduce results to a specific subset. Supports disjunctions (OR) and conjunctions (AND). Automat... |
| `pageSize` | `integer` | query | No | Optional. The maximum number of feedback labels to return in the response. A valid page size ranges from 0 to 100,000... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListFeedbackLabelsResponse`. This value indicates that this is a continuati... |

**Response**: `GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse`

```typescript
const res = await contactcenterinsights.feedbackLabels.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.feedbackLabels.get`

**GET** `v1/{+name}`

Get feedback label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the feedback label to get. |

**Response**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

```typescript
const res = await contactcenterinsights.feedbackLabels.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.feedbackLabels.patch`

**PATCH** `v1/{+name}`

Update feedback label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Immutable. Resource name of the FeedbackLabel. Format: projects/{project}/locations/{location}/conversations/{convers... |
| `updateMask` | `string` | query | No | Required. The list of fields to be updated. |

**Request body**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

**Response**: `GoogleCloudContactcenterinsightsV1FeedbackLabel`

```typescript
const res = await contactcenterinsights.feedbackLabels.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.feedbackLabels.delete`

**DELETE** `v1/{+name}`

Delete feedback label.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the feedback label to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.feedbackLabels.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.create`

**POST** `v1/{+parent}/assessments`

Create Assessment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the assessment. |

**Request body**: `GoogleCloudContactcenterinsightsV1Assessment`

**Response**: `GoogleCloudContactcenterinsightsV1Assessment`

```typescript
const res = await contactcenterinsights.assessments.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.get`

**GET** `v1/{+name}`

Get Assessment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assessment to get. |

**Response**: `GoogleCloudContactcenterinsightsV1Assessment`

```typescript
const res = await contactcenterinsights.assessments.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.list`

**GET** `v1/{+parent}/assessments`

List Assessments.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the assessments. To list all assessments in a location, substitute the conversation ... |
| `filter` | `string` | query | No | Optional. A filter to reduce results to a specific subset. Supported filters include: * `state` - The state of the as... |
| `pageSize` | `integer` | query | No | The maximum number of assessments to list. If zero, the service will select a default size. A call may return fewer o... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListAssessmentRulesResponse`; indicates that this is a continuation of a pr... |

**Response**: `GoogleCloudContactcenterinsightsV1ListAssessmentsResponse`

```typescript
const res = await contactcenterinsights.assessments.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.delete`

**DELETE** `v1/{+name}`

Delete an Assessment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assessment to delete. |
| `force` | `boolean` | query | No | Optional. If set to true, all of this assessment's notes will also be deleted. Otherwise, the request will only succe... |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.assessments.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.publish`

**POST** `v1/{+name}:publish`

Publish an Assessment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assessment to publish. |

**Request body**: `GoogleCloudContactcenterinsightsV1PublishAssessmentRequest`

**Response**: `GoogleCloudContactcenterinsightsV1Assessment`

```typescript
const res = await contactcenterinsights.assessments.publish({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.appeal`

**POST** `v1/{+name}:appeal`

Appeal an Assessment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assessment to appeal. |

**Request body**: `GoogleCloudContactcenterinsightsV1AppealAssessmentRequest`

**Response**: `GoogleCloudContactcenterinsightsV1Assessment`

```typescript
const res = await contactcenterinsights.assessments.appeal({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.finalize`

**POST** `v1/{+name}:finalize`

Finalize an Assessment.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the assessment to finalize. |

**Request body**: `GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest`

**Response**: `GoogleCloudContactcenterinsightsV1Assessment`

```typescript
const res = await contactcenterinsights.assessments.finalize({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.notes.create`

**POST** `v1/{+parent}/notes`

Create Note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the note. |

**Request body**: `GoogleCloudContactcenterinsightsV1Note`

**Response**: `GoogleCloudContactcenterinsightsV1Note`

```typescript
const res = await contactcenterinsights.notes.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.notes.list`

**GET** `v1/{+parent}/notes`

List Notes.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the notes. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of notes to return in the response. If zero the service will select a default size. A ca... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListNotesResponse`. This value indicates that this is a continuation of a p... |

**Response**: `GoogleCloudContactcenterinsightsV1ListNotesResponse`

```typescript
const res = await contactcenterinsights.notes.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.notes.patch`

**PATCH** `v1/{+name}`

Update Note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. The resource name of the note. Format: projects/{project}/locations/{location}/conversations/{conversatio... |
| `updateMask` | `string` | query | No | Optional. The list of fields to be updated. If the update_mask is empty, all updateable fields will be updated. Accep... |

**Request body**: `GoogleCloudContactcenterinsightsV1Note`

**Response**: `GoogleCloudContactcenterinsightsV1Note`

```typescript
const res = await contactcenterinsights.notes.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.authorizedViewSets.authorizedViews.conversations.assessments.notes.delete`

**DELETE** `v1/{+name}`

Deletes a Note.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the note to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.notes.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.dashboards.create`

**POST** `v1/{+parent}/dashboards`

Creates a Dashboard.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the dashboard. |
| `dashboardId` | `string` | query | No | Optional. A unique ID for the new Dashboard. This ID will become the final component of the Dashboard's resource name... |

**Request body**: `GoogleCloudContactcenterinsightsV1Dashboard`

**Response**: `GoogleCloudContactcenterinsightsV1Dashboard`

```typescript
const res = await contactcenterinsights.dashboards.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.dashboards.get`

**GET** `v1/{+name}`

Gets a Dashboard.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the dashboard to get. |

**Response**: `GoogleCloudContactcenterinsightsV1Dashboard`

```typescript
const res = await contactcenterinsights.dashboards.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.dashboards.list`

**GET** `v1/{+parent}/dashboards`

Lists Dashboards.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the dashboards. |
| `filter` | `string` | query | No | Optional. The filter expression to filter dashboards listed in the response. |
| `orderBy` | `string` | query | No | Optional. The order by expression to order dashboards listed in the response. |
| `pageSize` | `integer` | query | No | Optional. The maximum number of dashboards to return. The service may return fewer than this value. The default and m... |
| `pageToken` | `string` | query | No | Optional. The value returned by the last `ListDashboardsResponse`. This value indicates that this is a continuation o... |

**Response**: `GoogleCloudContactcenterinsightsV1ListDashboardsResponse`

```typescript
const res = await contactcenterinsights.dashboards.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.dashboards.patch`

**PATCH** `v1/{+name}`

Updates a Dashboard.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Dashboard resource name. Format: projects/{project}/locations/{location}/dashboards/{dashboard} |
| `updateMask` | `string` | query | No | Optional. List of fields to be updated. All possible fields can be updated by passing `*`, or a subset of the followi... |

**Request body**: `GoogleCloudContactcenterinsightsV1Dashboard`

**Response**: `GoogleCloudContactcenterinsightsV1Dashboard`

```typescript
const res = await contactcenterinsights.dashboards.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.dashboards.delete`

**DELETE** `v1/{+name}`

Deletes a Dashboard.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the dashboard to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.dashboards.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.dashboards.charts.create`

**POST** `v1/{+parent}/charts`

Creates a Chart.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the chart. |
| `chartId` | `string` | query | No | Optional. A unique ID for the new Chart. This ID will become the final component of the Chart's resource name. If no ... |

**Request body**: `GoogleCloudContactcenterinsightsV1Chart`

**Response**: `GoogleCloudContactcenterinsightsV1Chart`

```typescript
const res = await contactcenterinsights.charts.create({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.dashboards.charts.get`

**GET** `v1/{+name}`

Gets a Chart.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the chart to get. |

**Response**: `GoogleCloudContactcenterinsightsV1Chart`

```typescript
const res = await contactcenterinsights.charts.get({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.dashboards.charts.list`

**GET** `v1/{+parent}/charts`

Lists Charts.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `parent` | `string` | path | Yes | Required. The parent resource of the charts. |

**Response**: `GoogleCloudContactcenterinsightsV1ListChartsResponse`

```typescript
const res = await contactcenterinsights.charts.list({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.dashboards.charts.patch`

**PATCH** `v1/{+name}`

Updates a Chart.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Identifier. Chart resource name. Format: projects/{project}/locations/{location}/dashboards/{dashboard}/charts/{chart} |
| `updateMask` | `string` | query | No | Optional. List of fields to be updated. All possible fields can be updated by passing `*`, or a subset of the followi... |

**Request body**: `GoogleCloudContactcenterinsightsV1Chart`

**Response**: `GoogleCloudContactcenterinsightsV1Chart`

```typescript
const res = await contactcenterinsights.charts.patch({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

### `contactcenterinsights.projects.locations.dashboards.charts.delete`

**DELETE** `v1/{+name}`

Deletes a Chart.

**Parameters:**

| Parameter | Type | In | Required | Description |
|-----------|------|-----|----------|-------------|
| `name` | `string` | path | Yes | Required. The name of the chart to delete. |

**Response**: `GoogleProtobufEmpty`

```typescript
const res = await contactcenterinsights.charts.delete({
  // parameters
});
```

**Required scopes:**
- `https://www.googleapis.com/auth/cloud-platform`

---

## Schemas

### `GoogleCloudContactcenterinsightsV1Analysis`

The analysis resource.

| Property | Type | Description |
|----------|------|-------------|
| `analysisResult` | `GoogleCloudContactcenterinsightsV1AnalysisResult` | Output only. The result of the analysis, which is populated when the analysis finishes. |
| `annotatorSelector` | `GoogleCloudContactcenterinsightsV1AnnotatorSelector` | To select the annotators to run and the phrase matchers to use (if any). If not specified, all an... |
| `createTime` | `string` | Output only. The time at which the analysis was created, which occurs when the long-running opera... |
| `name` | `string` | Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/con... |
| `requestTime` | `string` | Output only. The time at which the analysis was requested. |

### `GoogleCloudContactcenterinsightsV1AnalysisResult`

The result of an analysis.

| Property | Type | Description |
|----------|------|-------------|
| `callAnalysisMetadata` | `GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata` | Call-specific metadata created by the analysis. |
| `endTime` | `string` | The time at which the analysis ended. |

### `GoogleCloudContactcenterinsightsV1AnalysisResultCallAnalysisMetadata`

Call-specific metadata created during analysis.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `array<GoogleCloudContactcenterinsightsV1CallAnnotation>` | A list of call annotations that apply to this call. |
| `entities` | `object` | All the entities in the call. |
| `intents` | `object` | All the matched intents in the call. |
| `issueModelResult` | `GoogleCloudContactcenterinsightsV1IssueModelResult` | Overall conversation-level issue modeling result. |
| `phraseMatchers` | `object` | All the matched phrase matchers in the call. |
| `qaScorecardResults` | `array<GoogleCloudContactcenterinsightsV1QaScorecardResult>` | Results of scoring QaScorecards. |
| `sentiments` | `array<GoogleCloudContactcenterinsightsV1ConversationLevelSentiment>` | Overall conversation-level sentiment for each channel of the call. |
| `silence` | `GoogleCloudContactcenterinsightsV1ConversationLevelSilence` | Overall conversation-level silence during the call. |

### `GoogleCloudContactcenterinsightsV1AnalysisRule`

The CCAI Insights project wide analysis rule. This rule will be applied to all conversations that match the filter defined in the rule. For a conversation matches the filter, the annotators specified in the rule will be run. If a conversation matches multiple rules, a union of all the annotators will be run. One project can have multiple analysis rules.

| Property | Type | Description |
|----------|------|-------------|
| `active` | `boolean` | If true, apply this rule to conversations. Otherwise, this rule is inactive and saved as a draft. |
| `analysisPercentage` | `number` | Percentage of conversations that we should apply this analysis setting automatically, between [0,... |
| `annotatorSelector` | `GoogleCloudContactcenterinsightsV1AnnotatorSelector` | Selector of annotators to run and the phrase matchers to use for conversations that matches the c... |
| `conversationFilter` | `string` | Filter for the conversations that should apply this analysis rule. An empty filter means this ana... |
| `createTime` | `string` | Output only. The time at which this analysis rule was created. |
| `displayName` | `string` | Display Name of the analysis rule. |
| `name` | `string` | Identifier. The resource name of the analysis rule. Format: projects/{project}/locations/{locatio... |
| `updateTime` | `string` | Output only. The most recent time at which this analysis rule was updated. |

### `GoogleCloudContactcenterinsightsV1AnnotationBoundary`

A point in a conversation that marks the start or the end of an annotation.

| Property | Type | Description |
|----------|------|-------------|
| `transcriptIndex` | `integer` | The index in the sequence of transcribed pieces of the conversation where the boundary is located... |
| `wordIndex` | `integer` | The word index of this boundary with respect to the first word in the transcript piece. This inde... |

### `GoogleCloudContactcenterinsightsV1AnnotatorSelector`

Selector of all available annotators and phrase matchers to run.

| Property | Type | Description |
|----------|------|-------------|
| `issueModels` | `array<string>` | The issue model to run. If not provided, the most recently deployed topic model will be used. The... |
| `phraseMatchers` | `array<string>` | The list of phrase matchers to run. If not provided, all active phrase matchers will be used. If ... |
| `qaConfig` | `GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig` | Configuration for the QA annotator. |
| `runEntityAnnotator` | `boolean` | Whether to run the entity annotator. |
| `runIntentAnnotator` | `boolean` | Whether to run the intent annotator. |
| `runInterruptionAnnotator` | `boolean` | Whether to run the interruption annotator. |
| `runIssueModelAnnotator` | `boolean` | Whether to run the issue model annotator. A model should have already been deployed for this to t... |
| `runPhraseMatcherAnnotator` | `boolean` | Whether to run the active phrase matcher annotator(s). |
| `runQaAnnotator` | `boolean` | Whether to run the QA annotator. |
| `runSentimentAnnotator` | `boolean` | Whether to run the sentiment annotator. |
| `runSilenceAnnotator` | `boolean` | Whether to run the silence annotator. |
| `runSummarizationAnnotator` | `boolean` | Whether to run the summarization annotator. |
| `summarizationConfig` | `GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig` | Configuration for the summarization annotator. |

### `GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfig`

Configuration for the QA feature.

| Property | Type | Description |
|----------|------|-------------|
| `scorecardList` | `GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList` | A manual list of scorecards to score. |

### `GoogleCloudContactcenterinsightsV1AnnotatorSelectorQaConfigScorecardList`

Container for a list of scorecards.

| Property | Type | Description |
|----------|------|-------------|
| `qaScorecardRevisions` | `array<string>` | List of QaScorecardRevisions. |

### `GoogleCloudContactcenterinsightsV1AnnotatorSelectorSummarizationConfig`

Configuration for summarization.

| Property | Type | Description |
|----------|------|-------------|
| `conversationProfile` | `string` | Resource name of the Dialogflow conversation profile. Format: projects/{project}/locations/{locat... |
| `generator` | `string` | The resource name of the existing created generator. Format: projects//locations//generators/ |
| `summarizationModel` | `string` | Default summarization model to be used. |

### `GoogleCloudContactcenterinsightsV1AnswerFeedback`

The feedback that the customer has about a certain answer in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `clicked` | `boolean` | Indicates whether an answer or item was clicked by the human agent. |
| `correctnessLevel` | `string` | The correctness level of an answer. |
| `displayed` | `boolean` | Indicates whether an answer or item was displayed to the human agent in the agent desktop UI. |

### `GoogleCloudContactcenterinsightsV1AppealAssessmentRequest`

The message to appeal an assessment.

### `GoogleCloudContactcenterinsightsV1ArticleSuggestionData`

Agent Assist Article Suggestion data.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceScore` | `number` | The system's confidence score that this article is a good match for this conversation, ranging fr... |
| `metadata` | `object` | Map that contains metadata about the Article Suggestion and the document that it originates from. |
| `queryRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `source` | `string` | The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeB... |
| `title` | `string` | Article title. |
| `uri` | `string` | Article URI. |

### `GoogleCloudContactcenterinsightsV1Assessment`

The assessment resource.

| Property | Type | Description |
|----------|------|-------------|
| `agentInfo` | `GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo` | Information about the agent the assessment is for. |
| `createTime` | `string` | Output only. The time at which the assessment was created. |
| `name` | `string` | Identifier. The resource name of the assessment. Format: projects/{project}/locations/{location}/... |
| `state` | `string` | Output only. The state of the assessment. |
| `updateTime` | `string` | Output only. The time at which the assessment was last updated. |

### `GoogleCloudContactcenterinsightsV1AssessmentRule`

The CCAI Insights project wide assessment rule. This assessment rule will be applied to all conversations from the previous sampling cycle that match the sample rule defined in the assessment rule. One project can have multiple assessment rules.

| Property | Type | Description |
|----------|------|-------------|
| `active` | `boolean` | If true, apply this rule to conversations. Otherwise, this rule is inactive. |
| `createTime` | `string` | Output only. The time at which this assessment rule was created. |
| `displayName` | `string` | Display Name of the assessment rule. |
| `name` | `string` | Identifier. The resource name of the assessment rule. Format: projects/{project}/locations/{locat... |
| `sampleRule` | `GoogleCloudContactcenterinsightsV1SampleRule` | The sample rule for the assessment rule. |
| `scheduleInfo` | `GoogleCloudContactcenterinsightsV1ScheduleInfo` | Schedule info for the assessment rule. |
| `updateTime` | `string` | Output only. The most recent time at which this assessment rule was updated. |

### `GoogleCloudContactcenterinsightsV1AuthorizedView`

An AuthorizedView represents a view of accessible Insights resources (for example, Conversation and Scorecard). Who have read access to the AuthorizedView resource will have access to these Insight resources as well.

| Property | Type | Description |
|----------|------|-------------|
| `conversationFilter` | `string` | A filter to reduce conversation results to a specific subset. The AuthorizedView's assigned permi... |
| `createTime` | `string` | Output only. The time at which the authorized view was created. |
| `displayName` | `string` | Display Name. Limit 64 characters. |
| `name` | `string` | Identifier. The resource name of the AuthorizedView. Format: projects/{project}/locations/{locati... |
| `updateTime` | `string` | Output only. The most recent time at which the authorized view was updated. |

### `GoogleCloudContactcenterinsightsV1AuthorizedViewSet`

An AuthorizedViewSet contains a set of AuthorizedView resources.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time. |
| `displayName` | `string` | Display Name. Limit 64 characters. |
| `name` | `string` | Identifier. The resource name of the AuthorizedViewSet. Format: projects/{project}/locations/{loc... |
| `updateTime` | `string` | Output only. Update time. |

### `GoogleCloudContactcenterinsightsV1AutoLabelingRule`

Rule for auto-labeling conversations.

| Property | Type | Description |
|----------|------|-------------|
| `active` | `boolean` | Whether the rule is active. |
| `conditions` | `array<GoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition>` | Conditions to apply for auto-labeling the label_key. Representing sequential block of if .. else ... |
| `createTime` | `string` | Output only. The time at which this rule was created. |
| `description` | `string` | The description of the rule. |
| `displayName` | `string` | The user-provided display name of the rule. |
| `labelKey` | `string` | The label key. This is also the {auto_labeling_rule} in the resource name. Only settable if label... |
| `labelKeyType` | `string` | The type of the label key. |
| `name` | `string` | Identifier. The resource name of the auto-labeling rule. Format: projects/{project}/locations/{lo... |
| `updateTime` | `string` | Output only. The most recent time at which the rule was updated. |

### `GoogleCloudContactcenterinsightsV1AutoLabelingRuleLabelingCondition`

Condition for auto-labeling conversations.

| Property | Type | Description |
|----------|------|-------------|
| `condition` | `string` | A optional CEL expression to be evaluated as a boolean value. Once evaluated as true, then we wil... |
| `value` | `string` | CEL expression to be evaluated as the value. |

### `GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsMetadata`

The metadata for a bulk analyze conversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `completedAnalysesCount` | `integer` | The number of requested analyses that have completed successfully so far. |
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `failedAnalysesCount` | `integer` | The number of requested analyses that have failed so far. |
| `partialErrors` | `array<GoogleRpcStatus>` | Output only. Partial errors during bulk analyze operation that might cause the operation output t... |
| `request` | `GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest` | The original request for bulk analyze. |
| `totalRequestedAnalysesCount` | `integer` | Total number of analyses requested. Computed by the number of conversations returned by `filter` ... |

### `GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsRequest`

The request to analyze conversations in bulk.

| Property | Type | Description |
|----------|------|-------------|
| `analysisPercentage` | `number` | Required. Percentage of selected conversation to analyze, between [0, 100]. |
| `annotatorSelector` | `GoogleCloudContactcenterinsightsV1AnnotatorSelector` | To select the annotators to run and the phrase matchers to use (if any). If not specified, all an... |
| `filter` | `string` | Required. Filter used to select the subset of conversations to analyze. |
| `parent` | `string` | Required. The parent resource to create analyses in. |

### `GoogleCloudContactcenterinsightsV1BulkAnalyzeConversationsResponse`

The response for a bulk analyze conversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `failedAnalysisCount` | `integer` | Count of failed analyses. |
| `successfulAnalysisCount` | `integer` | Count of successful analyses. |

### `GoogleCloudContactcenterinsightsV1BulkDeleteConversationsMetadata`

The metadata for a bulk delete conversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during bulk delete conversations operation that might cause the operation output t... |
| `request` | `GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest` | The original request for bulk delete. |

### `GoogleCloudContactcenterinsightsV1BulkDeleteConversationsRequest`

The request to delete conversations in bulk.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Filter used to select the subset of conversations to delete. |
| `force` | `boolean` | If set to true, all of this conversation's analyses will also be deleted. Otherwise, the request ... |
| `maxDeleteCount` | `integer` | Maximum number of conversations to delete. |
| `parent` | `string` | Required. The parent resource to delete conversations from. Format: projects/{project}/locations/... |

### `GoogleCloudContactcenterinsightsV1BulkDeleteConversationsResponse`

The response for a bulk delete conversations operation.

### `GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsMetadata`

Metadata for the BulkDeleteFeedbackLabels endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during deletion operation that might cause the operation output to be incomplete. |
| `request` | `GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest` | Output only. The original request for delete. |

### `GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsRequest`

Request for the BulkDeleteFeedbackLabels endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Optional. A filter to reduce results to a specific subset. Supports disjunctions (OR) and conjunc... |
| `parent` | `string` | Required. The parent resource for new feedback labels. |

### `GoogleCloudContactcenterinsightsV1BulkDeleteFeedbackLabelsResponse`

Response for the BulkDeleteFeedbackLabels endpoint.

### `GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsMetadata`

Metadata for the BulkDownloadFeedbackLabel endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `downloadStats` | `GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsMetadataDownloadStats` | Output only. Statistics for BulkDownloadFeedbackLabels operation. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during ingest operation that might cause the operation output to be incomplete. |
| `request` | `GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest` | Output only. The original request for download. |

### `GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsMetadataDownloadStats`

Statistics for BulkDownloadFeedbackLabels operation.

| Property | Type | Description |
|----------|------|-------------|
| `fileNames` | `array<string>` | Output only. Full name of the files written to Cloud storage. |
| `processedObjectCount` | `integer` | The number of objects processed during the download operation. |
| `successfulDownloadCount` | `integer` | The number of new feedback labels downloaded during this operation. Different from "processed" be... |
| `totalFilesWritten` | `integer` | Total number of files written to the provided Cloud Storage bucket. |

### `GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequest`

Request for the BulkDownloadFeedbackLabel endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `conversationFilter` | `string` | Optional. Filter parent conversations to download feedback labels for. When specified, the feedba... |
| `feedbackLabelType` | `string` | Optional. The type of feedback labels that will be downloaded. |
| `filter` | `string` | Optional. A filter to reduce results to a specific subset. Supports disjunctions (OR) and conjunc... |
| `gcsDestination` | `GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination` | A cloud storage bucket destination. |
| `maxDownloadCount` | `integer` | Optional. Limits the maximum number of feedback labels that will be downloaded. The first `N` fee... |
| `parent` | `string` | Required. The parent resource for new feedback labels. |
| `sheetsDestination` | `GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination` | A sheets document destination. |
| `templateQaScorecardId` | `array<string>` | Optional. If set, a template for labeling conversations and scorecard questions will be created f... |

### `GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestGcsDestination`

Google Cloud Storage Object details to write the feedback labels to.

| Property | Type | Description |
|----------|------|-------------|
| `addWhitespace` | `boolean` | Optional. Add whitespace to the JSON file. Makes easier to read, but increases file size. Only ap... |
| `alwaysPrintEmptyFields` | `boolean` | Optional. Always print fields with no presence. This is useful for printing fields that are not s... |
| `format` | `string` | Required. File format in which the labels will be exported. |
| `objectUri` | `string` | Required. The Google Cloud Storage URI to write the feedback labels to. The file name will be use... |
| `recordsPerFileCount` | `string` | Optional. The number of records per file. Applicable for either format. |

### `GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsRequestSheetsDestination`

Google Sheets document details to write the feedback labels to.

| Property | Type | Description |
|----------|------|-------------|
| `sheetTitle` | `string` | Optional. The title of the new sheet to write the feedback labels to. |
| `spreadsheetUri` | `string` | Required. The Google Sheets document to write the feedback labels to. Retrieved from Google Sheet... |

### `GoogleCloudContactcenterinsightsV1BulkDownloadFeedbackLabelsResponse`

Response for the BulkDownloadFeedbackLabel endpoint.

### `GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequest`

The request for bulk uploading feedback labels.

| Property | Type | Description |
|----------|------|-------------|
| `gcsSource` | `GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource` | A cloud storage bucket source. |
| `sheetsSource` | `GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource` | A sheets document source. |
| `validateOnly` | `boolean` | Optional. If set, upload will not happen and the labels will be validated. If not set, then defau... |

### `GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestGcsSource`

Google Cloud Storage Object details to get the feedback label file from.

| Property | Type | Description |
|----------|------|-------------|
| `format` | `string` | Required. File format which will be ingested. |
| `objectUri` | `string` | Required. The Google Cloud Storage URI of the file to import. Format: `gs://bucket_name/object_name` |

### `GoogleCloudContactcenterinsightsV1BulkUploadFeedbackLabelsRequestSheetsSource`

Google Sheets document details to get the feedback label file from.

| Property | Type | Description |
|----------|------|-------------|
| `spreadsheetUri` | `string` | Required. The Google Sheets document to write the feedback labels to. Retrieved from Google Sheet... |

### `GoogleCloudContactcenterinsightsV1CalculateIssueModelStatsResponse`

Response of querying an issue model's statistics.

| Property | Type | Description |
|----------|------|-------------|
| `currentStats` | `GoogleCloudContactcenterinsightsV1IssueModelLabelStats` | The latest label statistics for the queried issue model. Includes results on both training data a... |

### `GoogleCloudContactcenterinsightsV1CalculateStatsRequest`

The request for calculating conversation statistics.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | A filter to reduce results to a specific subset. This field is useful for getting statistics abou... |

### `GoogleCloudContactcenterinsightsV1CalculateStatsResponse`

The response for calculating conversation statistics.

| Property | Type | Description |
|----------|------|-------------|
| `averageDuration` | `string` | The average duration of all conversations. The average is calculated using only conversations tha... |
| `averageTurnCount` | `integer` | The average number of turns per conversation. |
| `conversationCount` | `integer` | The total number of conversations. |
| `conversationCountTimeSeries` | `GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries` | A time series representing the count of conversations created over time that match that requested... |
| `customHighlighterMatches` | `object` | A map associating each custom highlighter resource name with its respective number of matches in ... |
| `issueMatches` | `object` | A map associating each issue resource name with its respective number of matches in the set of co... |
| `issueMatchesStats` | `object` | A map associating each issue resource name with its respective number of matches in the set of co... |
| `smartHighlighterMatches` | `object` | A map associating each smart highlighter display name with its respective number of matches in th... |

### `GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeries`

A time series representing conversations over time.

| Property | Type | Description |
|----------|------|-------------|
| `intervalDuration` | `string` | The duration of each interval. |
| `points` | `array<GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval>` | An ordered list of intervals from earliest to latest, where each interval represents the number o... |

### `GoogleCloudContactcenterinsightsV1CalculateStatsResponseTimeSeriesInterval`

A single interval in a time series.

| Property | Type | Description |
|----------|------|-------------|
| `conversationCount` | `integer` | The number of conversations created in this interval. |
| `startTime` | `string` | The start time of this interval. |

### `GoogleCloudContactcenterinsightsV1CallAnnotation`

A piece of metadata that applies to a window of a call.

| Property | Type | Description |
|----------|------|-------------|
| `annotationEndBoundary` | `GoogleCloudContactcenterinsightsV1AnnotationBoundary` | The boundary in the conversation where the annotation ends, inclusive. |
| `annotationStartBoundary` | `GoogleCloudContactcenterinsightsV1AnnotationBoundary` | The boundary in the conversation where the annotation starts, inclusive. |
| `channelTag` | `integer` | The channel of the audio where the annotation occurs. For single-channel audio, this field is not... |
| `entityMentionData` | `GoogleCloudContactcenterinsightsV1EntityMentionData` | Data specifying an entity mention. |
| `holdData` | `GoogleCloudContactcenterinsightsV1HoldData` | Data specifying a hold. |
| `intentMatchData` | `GoogleCloudContactcenterinsightsV1IntentMatchData` | Data specifying an intent match. |
| `interruptionData` | `GoogleCloudContactcenterinsightsV1InterruptionData` | Data specifying an interruption. |
| `issueMatchData` | `GoogleCloudContactcenterinsightsV1IssueMatchData` | Data specifying an issue match. |
| `phraseMatchData` | `GoogleCloudContactcenterinsightsV1PhraseMatchData` | Data specifying a phrase match. |
| `sentimentData` | `GoogleCloudContactcenterinsightsV1SentimentData` | Data specifying sentiment. |
| `silenceData` | `GoogleCloudContactcenterinsightsV1SilenceData` | Data specifying silence. |

### `GoogleCloudContactcenterinsightsV1Chart`

Configurable dashboard's widget that displays data as a chart.

| Property | Type | Description |
|----------|------|-------------|
| `chartType` | `string` | Output only. Chart type. |
| `chartVisualizationType` | `string` | Chart visualization type. |
| `createTime` | `string` | Output only. Chart create time. |
| `dataSource` | `GoogleCloudContactcenterinsightsV1ChartDataSource` |  |
| `dateRangeConfig` | `GoogleCloudContactcenterinsightsV1DateRangeConfig` | Date range config applied to the chart. |
| `description` | `string` | Chart description |
| `displayName` | `string` | User provided display name of the chart. |
| `filter` | `string` | Filter applied to all charts in the container. Should support scope later. |
| `height` | `integer` | The height of the chart in grid units. |
| `name` | `string` | Identifier. Chart resource name. Format: projects/{project}/locations/{location}/dashboards/{dash... |
| `updateTime` | `string` | Output only. Chart last update time. |
| `width` | `integer` | The width of the chart in grid units. |

### `GoogleCloudContactcenterinsightsV1ChartDataSource`

The request data for visualizing the dataset in the chart.

| Property | Type | Description |
|----------|------|-------------|
| `generativeInsights` | `GoogleCloudContactcenterinsightsV1GenerativeInsights` | Use natural language query to generate the chart. |
| `queryMetrics` | `GoogleCloudContactcenterinsightsV1QueryMetrics` | Use the existing QueryMetrics to generate the chart. |

### `GoogleCloudContactcenterinsightsV1ConstraintEvaluationResult`

The result of testing a constraint expression on a pair of conversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversationA` | `string` | The first conversation resource name. |
| `conversationB` | `string` | The second conversation resource name. |
| `ruleConstraintResults` | `array<GoogleCloudContactcenterinsightsV1ConstraintEvaluationResultRuleConstraintResult>` | The results for each applicable constraint rule. |

### `GoogleCloudContactcenterinsightsV1ConstraintEvaluationResultRuleConstraintResult`

The result of a single constraint rule on the pair of conversations.

| Property | Type | Description |
|----------|------|-------------|
| `constraintMet` | `boolean` | Whether the constraint expression evaluated to true for (A, B) or (B, A). |
| `error` | `GoogleRpcStatus` | The error status if the constraint expression failed to evaluate. |
| `ruleId` | `string` | The rule ID. |

### `GoogleCloudContactcenterinsightsV1Container`

Configurable dashboard's container. Container can contain multiple widgets.

| Property | Type | Description |
|----------|------|-------------|
| `containerId` | `string` | Output only. Unique ID for the container. |
| `dateRangeConfig` | `GoogleCloudContactcenterinsightsV1DateRangeConfig` | Date range config applied to all charts in the container. |
| `description` | `string` | Container description |
| `displayName` | `string` | User provided display name of the Container. |
| `filter` | `string` | Filter applied to all charts in the container. Should support scope later. |
| `height` | `integer` | The height of the container in grid units. |
| `widgets` | `array<GoogleCloudContactcenterinsightsV1Widget>` | Widgets in the Container. |
| `width` | `integer` | The width of the container in grid units. |

### `GoogleCloudContactcenterinsightsV1Conversation`

The conversation resource.

| Property | Type | Description |
|----------|------|-------------|
| `agentId` | `string` | An opaque, user-specified string representing the human agent who handled the conversation. |
| `callMetadata` | `GoogleCloudContactcenterinsightsV1ConversationCallMetadata` | Call-specific metadata. |
| `correlationInfo` | `GoogleCloudContactcenterinsightsV1ConversationCorrelationInfo` | Output only. Info for correlating across conversations. |
| `createTime` | `string` | Output only. The time at which the conversation was created. |
| `dataSource` | `GoogleCloudContactcenterinsightsV1ConversationDataSource` | The source of the audio and transcription for the conversation. |
| `dialogflowIntents` | `object` | Output only. All the matched Dialogflow intents in the call. The key corresponds to a Dialogflow ... |
| `duration` | `string` | Output only. The duration of the conversation. |
| `expireTime` | `string` | The time at which this conversation should expire. After this time, the conversation data and any... |
| `labels` | `object` | A map for the user to specify any custom fields. A maximum of 100 labels per conversation is allo... |
| `languageCode` | `string` | A user-specified language code for the conversation. |
| `latestAnalysis` | `GoogleCloudContactcenterinsightsV1Analysis` | Output only. The conversation's latest analysis, if one exists. |
| `latestSummary` | `GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData` | Output only. Latest summary of the conversation. |
| `medium` | `string` | Immutable. The conversation medium. |
| `metadataJson` | `string` | Input only. JSON metadata encoded as a string. This field is primarily used by Insights integrati... |
| `name` | `string` | Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}... |
| `obfuscatedUserId` | `string` | Obfuscated user ID which the customer sent to us. |
| `qualityMetadata` | `GoogleCloudContactcenterinsightsV1ConversationQualityMetadata` | Conversation metadata related to quality management. |
| `runtimeAnnotations` | `array<GoogleCloudContactcenterinsightsV1RuntimeAnnotation>` | Output only. The annotations that were generated during the customer and agent interaction. |
| `startTime` | `string` | The time at which the conversation started. |
| `transcript` | `GoogleCloudContactcenterinsightsV1ConversationTranscript` | Output only. The conversation transcript. |
| `ttl` | `string` | Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the ... |
| `turnCount` | `integer` | Output only. The number of turns in the conversation. |
| `updateTime` | `string` | Output only. The most recent time at which the conversation was updated. |

### `GoogleCloudContactcenterinsightsV1ConversationCallMetadata`

Call-specific metadata.

| Property | Type | Description |
|----------|------|-------------|
| `agentChannel` | `integer` | The audio channel that contains the agent. |
| `customerChannel` | `integer` | The audio channel that contains the customer. |

### `GoogleCloudContactcenterinsightsV1ConversationCorrelationInfo`

Info for correlating across conversations.

| Property | Type | Description |
|----------|------|-------------|
| `correlationTypes` | `array<string>` | Output only. The correlation types of this conversation. A single conversation can have multiple ... |
| `fullConversationCorrelationId` | `string` | Output only. The full conversation correlation id this conversation is a segment of. |
| `mergedFullConversationCorrelationId` | `string` | Output only. The full conversation correlation id this conversation is a merged conversation of. |

### `GoogleCloudContactcenterinsightsV1ConversationCorrelationResult`

The result of testing correlation config on a single conversation.

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `string` | The conversation resource name. |
| `ruleResults` | `array<GoogleCloudContactcenterinsightsV1ConversationCorrelationResultRuleCorrelationResult>` | The results for each correlation rule. |

### `GoogleCloudContactcenterinsightsV1ConversationCorrelationResultRuleCorrelationResult`

The result of a single correlation rule.

| Property | Type | Description |
|----------|------|-------------|
| `correlationId` | `string` | The correlation ID generated by the join key expression. |
| `error` | `GoogleRpcStatus` | The error status if the join key expression failed to evaluate. |
| `ruleId` | `string` | The rule ID. |

### `GoogleCloudContactcenterinsightsV1ConversationDataOptions`

Options for configuring what metadata is included in the conversation data used in QAI and Discovery Engine.

| Property | Type | Description |
|----------|------|-------------|
| `includeDialogflowInteractionData` | `boolean` | Whether to include the per turn Dialogflow interaction data in conversation transcript. |

### `GoogleCloudContactcenterinsightsV1ConversationDataSource`

The conversation source, which is a combination of transcript and audio.

| Property | Type | Description |
|----------|------|-------------|
| `dialogflowSource` | `GoogleCloudContactcenterinsightsV1DialogflowSource` | The source when the conversation comes from Dialogflow. |
| `gcsSource` | `GoogleCloudContactcenterinsightsV1GcsSource` | A Cloud Storage location specification for the audio and transcript. |
| `metadataUri` | `string` | Cloud Storage URI that points to a file that contains the conversation metadata. |

### `GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio`

A wrapper for holding the audio for any given turn.

| Property | Type | Description |
|----------|------|-------------|
| `audioDuration` | `string` | The duration of the audio. |
| `audioGcsUri` | `string` | The Cloud Storage URI of the audio for any given turn. |

### `GoogleCloudContactcenterinsightsV1ConversationLevelSentiment`

One channel of conversation-level sentiment data.

| Property | Type | Description |
|----------|------|-------------|
| `channelTag` | `integer` | The channel of the audio that the data applies to. |
| `sentimentData` | `GoogleCloudContactcenterinsightsV1SentimentData` | Data specifying sentiment. |

### `GoogleCloudContactcenterinsightsV1ConversationLevelSilence`

Conversation-level silence data.

| Property | Type | Description |
|----------|------|-------------|
| `silenceDuration` | `string` | Amount of time calculated to be in silence. |
| `silencePercentage` | `number` | Percentage of the total conversation spent in silence. |

### `GoogleCloudContactcenterinsightsV1ConversationParticipant`

The call participant speaking for a given utterance.

| Property | Type | Description |
|----------|------|-------------|
| `dialogflowParticipant` | `string` | Deprecated. Use `dialogflow_participant_name` instead. The name of the Dialogflow participant. Fo... |
| `dialogflowParticipantName` | `string` | The name of the participant provided by Dialogflow. Format: projects/{project}/locations/{locatio... |
| `obfuscatedExternalUserId` | `string` | Obfuscated user ID from Dialogflow. |
| `role` | `string` | The role of the participant. |
| `userId` | `string` | A user-specified ID representing the participant. |

### `GoogleCloudContactcenterinsightsV1ConversationQualityMetadata`

Conversation metadata related to quality management.

| Property | Type | Description |
|----------|------|-------------|
| `agentInfo` | `array<GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo>` | Information about agents involved in the call. |
| `customerSatisfactionRating` | `integer` | An arbitrary integer value indicating the customer's satisfaction rating. |
| `feedbackLabels` | `array<GoogleCloudContactcenterinsightsV1FeedbackLabel>` | Input only. The feedback labels associated with the conversation. |
| `menuPath` | `string` | An arbitrary string value specifying the menu path the customer took. |
| `waitDuration` | `string` | The amount of time the customer waited to connect with an agent. |

### `GoogleCloudContactcenterinsightsV1ConversationQualityMetadataAgentInfo`

Information about an agent involved in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `agentId` | `string` | A user-specified string representing the agent. |
| `agentType` | `string` | The agent type, e.g. HUMAN_AGENT. |
| `deploymentDisplayName` | `string` | The agent's deployment display name. Only applicable to automated agents. |
| `deploymentId` | `string` | The agent's deployment ID. Only applicable to automated agents. |
| `displayName` | `string` | The agent's name. |
| `dispositionCode` | `string` | A user-provided string indicating the outcome of the agent's segment of the call. |
| `location` | `string` | The agent's location. |
| `team` | `string` | A user-specified string representing the agent's team. Deprecated in favor of the `teams` field. |
| `teams` | `array<string>` | User-specified strings representing the agent's teams. |
| `versionDisplayName` | `string` | The agent's version display name. Only applicable to automated agents. |
| `versionId` | `string` | The agent's version ID. Only applicable to automated agents. |

### `GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData`

Conversation summarization suggestion data.

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `confidence` | `number` | The confidence score of the summarization. |
| `conversationModel` | `string` | The name of the model that generates this summary. Format: projects/{project}/locations/{location... |
| `generatorId` | `string` | Agent Assist generator ID. |
| `metadata` | `object` | A map that contains metadata about the summarization and the document from which it originates. |
| `text` | `string` | The summarization content that is concatenated into one string. |
| `textSections` | `object` | The summarization content that is divided into sections. The key is the section's name and the va... |

### `GoogleCloudContactcenterinsightsV1ConversationTranscript`

A message representing the transcript of a conversation.

| Property | Type | Description |
|----------|------|-------------|
| `transcriptSegments` | `array<GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment>` | A list of sequential transcript segments that comprise the conversation. |

### `GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegment`

A segment of a full transcript.

| Property | Type | Description |
|----------|------|-------------|
| `channelTag` | `integer` | For conversations derived from multi-channel audio, this is the channel number corresponding to t... |
| `confidence` | `number` | A confidence estimate between 0.0 and 1.0 of the fidelity of this segment. A default value of 0.0... |
| `dialogflowSegmentMetadata` | `GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata` | CCAI metadata relating to the current transcript segment. |
| `languageCode` | `string` | The language code of this segment as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) lan... |
| `messageTime` | `string` | The time that the message occurred, if provided. |
| `segmentParticipant` | `GoogleCloudContactcenterinsightsV1ConversationParticipant` | The participant of this segment. |
| `sentiment` | `GoogleCloudContactcenterinsightsV1SentimentData` | The sentiment for this transcript segment. |
| `text` | `string` | The text of this segment. |
| `words` | `array<GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo>` | A list of the word-specific information for each word in the segment. |

### `GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata`

Metadata from Dialogflow relating to the current transcript segment.

| Property | Type | Description |
|----------|------|-------------|
| `smartReplyAllowlistCovered` | `boolean` | Whether the transcript segment was covered under the configured smart reply allowlist in Agent As... |

### `GoogleCloudContactcenterinsightsV1ConversationTranscriptTranscriptSegmentWordInfo`

Word-level info for words in a transcript.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | A confidence estimate between 0.0 and 1.0 of the fidelity of this word. A default value of 0.0 in... |
| `endOffset` | `string` | Time offset of the end of this word relative to the beginning of the total conversation. |
| `startOffset` | `string` | Time offset of the start of this word relative to the beginning of the total conversation. |
| `word` | `string` | The word itself. Includes punctuation marks that surround the word. |

### `GoogleCloudContactcenterinsightsV1CorrelationConfig`

A configuration that defines how to correlate conversations for a given a given project.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the correlation config was created. |
| `fullConversationConfig` | `GoogleCloudContactcenterinsightsV1CorrelationTypeConfig` | The correlation type config for full conversations. |
| `name` | `string` | Immutable. Identifier. The resource name of the correlation config. Format: projects/{project}/lo... |
| `updateTime` | `string` | Output only. The time at which the correlation config was last updated. |

### `GoogleCloudContactcenterinsightsV1CorrelationRule`

A correlation rule that defines how to join conversations for a given correlation type.

| Property | Type | Description |
|----------|------|-------------|
| `active` | `boolean` | Optional. Whether the config is active to be evaluated. |
| `constraintExpression` | `string` | Optional. A cel expression (go/cel) to be evaluated as a boolean value. Two variables conversatio... |
| `joinKeyExpression` | `string` | Optional. A cel expression (go/cel) to be evaluated as a string value. This string value will be ... |
| `ruleId` | `string` | Required. The unique identifier of the rule. |

### `GoogleCloudContactcenterinsightsV1CorrelationTypeConfig`

A list of correlation rules for a given correlation type.

| Property | Type | Description |
|----------|------|-------------|
| `correlationRules` | `array<GoogleCloudContactcenterinsightsV1CorrelationRule>` | A list of correlation rules to be evaluated for correlation. |

### `GoogleCloudContactcenterinsightsV1CreateAnalysisOperationMetadata`

Metadata for a create analysis operation.

| Property | Type | Description |
|----------|------|-------------|
| `annotatorSelector` | `GoogleCloudContactcenterinsightsV1AnnotatorSelector` | Output only. The annotator selector used for the analysis (if any). |
| `conversation` | `string` | Output only. The Conversation that this Analysis Operation belongs to. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |

### `GoogleCloudContactcenterinsightsV1CreateIssueMetadata`

Metadata for creating an issue.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1CreateIssueRequest` | The original request for creation. |

### `GoogleCloudContactcenterinsightsV1CreateIssueModelMetadata`

Metadata for creating an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1CreateIssueModelRequest` | The original request for creation. |

### `GoogleCloudContactcenterinsightsV1CreateIssueModelRequest`

The request to create an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `issueModel` | `GoogleCloudContactcenterinsightsV1IssueModel` | Required. The issue model to create. |
| `parent` | `string` | Required. The parent resource of the issue model. |

### `GoogleCloudContactcenterinsightsV1CreateIssueRequest`

The request to create an issue.

| Property | Type | Description |
|----------|------|-------------|
| `issue` | `GoogleCloudContactcenterinsightsV1Issue` | Required. The values for the new issue. |
| `parent` | `string` | Required. The parent resource of the issue. |

### `GoogleCloudContactcenterinsightsV1Dashboard`

Configurable dashboard

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Dashboard creation time. |
| `dateRangeConfig` | `GoogleCloudContactcenterinsightsV1DateRangeConfig` | Date range config applied to all charts in the dashboard. |
| `description` | `string` | Dashboard description |
| `displayName` | `string` | User provided display name of the dashboard. |
| `filter` | `string` | Filter applied to all charts in the dashboard. Should support scope later. |
| `name` | `string` | Identifier. Dashboard resource name. Format: projects/{project}/locations/{location}/dashboards/{... |
| `readOnly` | `boolean` | Output only. Whether the dashboard is read-only. All predefined dashboards are read-only and cann... |
| `rootContainer` | `GoogleCloudContactcenterinsightsV1Container` | The dashboard's root widget container. We want to display the dashboard layout in a tree-like str... |
| `updateTime` | `string` | Output only. Dashboard last update time. |

### `GoogleCloudContactcenterinsightsV1Dataset`

Dataset resource represents a collection of conversations that may be bounded (Static Dataset, e.g. golden dataset for training), or unbounded (Dynamic Dataset, e.g. live traffic, or agent training traffic)

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Dataset create time. |
| `description` | `string` | Dataset description. |
| `displayName` | `string` | Display name for the dataaset |
| `name` | `string` | Immutable. Identifier. Resource name of the dataset. Format: projects/{project}/locations/{locati... |
| `ttl` | `string` | Optional. Option TTL for the dataset. |
| `type` | `string` | Dataset usage type. |
| `updateTime` | `string` | Output only. Dataset update time. |

### `GoogleCloudContactcenterinsightsV1DateRangeConfig`

Date range configuration for dashboard charts.

| Property | Type | Description |
|----------|------|-------------|
| `absoluteDateRange` | `GoogleCloudContactcenterinsightsV1QueryInterval` | An absolute date range. |
| `relativeDateRange` | `GoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange` | A relative date range. |

### `GoogleCloudContactcenterinsightsV1DateRangeConfigRelativeDateRange`

Relative date range configuration.

| Property | Type | Description |
|----------|------|-------------|
| `quantity` | `string` | Required. The quantity of units in the past. |
| `unit` | `string` | Required. The unit of time. |

### `GoogleCloudContactcenterinsightsV1DeleteIssueModelMetadata`

Metadata for deleting an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1DeleteIssueModelRequest` | The original request for deletion. |

### `GoogleCloudContactcenterinsightsV1DeleteIssueModelRequest`

The request to delete an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the issue model to delete. |

### `GoogleCloudContactcenterinsightsV1DeleteQaQuestionTagMetadata`

The metadata for deleting a QaQuestionTag Resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1DeleteQaQuestionTagRequest` | Output only. The original request. |

### `GoogleCloudContactcenterinsightsV1DeleteQaQuestionTagRequest`

The request for deleting a QaQuestionTag.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the QaQuestionTag to delete. |

### `GoogleCloudContactcenterinsightsV1DeployIssueModelMetadata`

Metadata for deploying an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1DeployIssueModelRequest` | The original request for deployment. |

### `GoogleCloudContactcenterinsightsV1DeployIssueModelRequest`

The request to deploy an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The issue model to deploy. |

### `GoogleCloudContactcenterinsightsV1DeployIssueModelResponse`

The response to deploy an issue model.

### `GoogleCloudContactcenterinsightsV1DeployQaScorecardRevisionRequest`

The request to deploy a QaScorecardRevision

### `GoogleCloudContactcenterinsightsV1DialogflowIntent`

The data for a Dialogflow intent. Represents a detected intent in the conversation, e.g. MAKES_PROMISE.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the intent. |

### `GoogleCloudContactcenterinsightsV1DialogflowInteractionData`

Dialogflow interaction data.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The confidence of the match ranging from 0.0 (completely uncertain) to 1.0 (completely certain). |
| `dialogflowIntentId` | `string` | The Dialogflow intent resource path. Format: projects/{project}/agent/{agent}/intents/{intent} |

### `GoogleCloudContactcenterinsightsV1DialogflowSource`

A Dialogflow source of conversation data.

| Property | Type | Description |
|----------|------|-------------|
| `audioUri` | `string` | Cloud Storage URI that points to a file that contains the conversation audio. |
| `dialogflowConversation` | `string` | Output only. The name of the Dialogflow conversation that this conversation resource is derived f... |

### `GoogleCloudContactcenterinsightsV1Dimension`

A dimension determines the grouping key for the query. In SQL terms, these would be part of both the "SELECT" and "GROUP BY" clauses.

| Property | Type | Description |
|----------|------|-------------|
| `agentDimensionMetadata` | `GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata` | Output only. Metadata about the agent dimension. |
| `clientSentimentCategoryDimensionMetadata` | `GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata` | Output only. Metadata about the client sentiment category dimension. |
| `conversationProfileDimensionMetadata` | `GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata` | Output only. Metadata about the conversation profile dimension. |
| `conversationalAgentsPlaybookDimensionMetadata` | `GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata` | Output only. Metadata about the Conversational Agents playbook dimension. |
| `conversationalAgentsToolDimensionMetadata` | `GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata` | Output only. Metadata about the Conversational Agents tool dimension. |
| `dimensionKey` | `string` | The key of the dimension. |
| `issueDimensionMetadata` | `GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata` | Output only. Metadata about the issue dimension. |
| `labelDimensionMetadata` | `GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata` | Output only. Metadata about conversation labels. |
| `mediumDimensionMetadata` | `GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata` | Output only. Metadata about the conversation medium dimension. |
| `qaQuestionAnswerDimensionMetadata` | `GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata` | Output only. Metadata about the QA question-answer dimension. |
| `qaQuestionDimensionMetadata` | `GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata` | Output only. Metadata about the QA question dimension. |
| `qaScorecardDimensionMetadata` | `GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata` | Output only. Metadata about the QA scorecard dimension. |

### `GoogleCloudContactcenterinsightsV1DimensionAgentDimensionMetadata`

Metadata about the agent dimension.

| Property | Type | Description |
|----------|------|-------------|
| `agentDeploymentDisplayName` | `string` | Optional. The agent's deployment display name. Only applicable to automated agents. This will be ... |
| `agentDeploymentId` | `string` | Optional. The agent's deployment ID. Only applicable to automated agents. This will be populated ... |
| `agentDisplayName` | `string` | Optional. The agent's name This will be populated for AGENT, AGENT_TEAM, AGENT_VERSION_ID, and AG... |
| `agentId` | `string` | Optional. A user-specified string representing the agent. This will be populated for AGENT, AGENT... |
| `agentTeam` | `string` | Optional. A user-specified string representing the agent's team. |
| `agentVersionDisplayName` | `string` | Optional. The agent's version display name. Only applicable to automated agents. This will be pop... |
| `agentVersionId` | `string` | Optional. The agent's version ID. Only applicable to automated agents. This will be populated for... |

### `GoogleCloudContactcenterinsightsV1DimensionClientSentimentCategoryDimensionMetadata`

Metadata about the client sentiment category dimension.

| Property | Type | Description |
|----------|------|-------------|
| `sentimentCategory` | `string` | Optional. The client sentiment category. |

### `GoogleCloudContactcenterinsightsV1DimensionConversationProfileDimensionMetadata`

Metadata about the conversation profile dimension.

| Property | Type | Description |
|----------|------|-------------|
| `conversationProfileId` | `string` | Optional. The conversation profile ID. |

### `GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsPlaybookDimensionMetadata`

Metadata about the Conversational Agents playbook dimension.

| Property | Type | Description |
|----------|------|-------------|
| `playbookDisplayName` | `string` | Optional. The dialogflow playbook display name. |
| `playbookId` | `string` | Optional. The dialogflow playbook ID. |

### `GoogleCloudContactcenterinsightsV1DimensionConversationalAgentsToolDimensionMetadata`

Metadata about the Conversational Agents tool dimension.

| Property | Type | Description |
|----------|------|-------------|
| `toolDisplayName` | `string` | Optional. The dialogflow tool display name. |
| `toolId` | `string` | Optional. The dialogflow tool ID. |

### `GoogleCloudContactcenterinsightsV1DimensionIssueDimensionMetadata`

Metadata about the issue dimension.

| Property | Type | Description |
|----------|------|-------------|
| `issueDisplayName` | `string` | The issue display name. |
| `issueId` | `string` | The issue ID. |
| `issueModelId` | `string` | The parent issue model ID. |

### `GoogleCloudContactcenterinsightsV1DimensionLabelDimensionMetadata`

Metadata about conversation labels.

| Property | Type | Description |
|----------|------|-------------|
| `labelKey` | `string` | Optional. The label key. |
| `labelValue` | `string` | Optional. The label value. |

### `GoogleCloudContactcenterinsightsV1DimensionMediumDimensionMetadata`

Metadata about the conversation medium dimension.

| Property | Type | Description |
|----------|------|-------------|
| `medium` | `string` | Optional. The conversation medium. Currently supports : PHONE_CALL, CHAT. |

### `GoogleCloudContactcenterinsightsV1DimensionQaQuestionAnswerDimensionMetadata`

Metadata about the QA question-answer dimension. This is useful for showing the answer distribution for questions for a given scorecard.

| Property | Type | Description |
|----------|------|-------------|
| `answerValue` | `string` | Optional. The full body of the question. |
| `qaQuestionId` | `string` | Optional. The QA question ID. |
| `qaScorecardId` | `string` | Optional. The QA scorecard ID. |
| `questionBody` | `string` | Optional. The full body of the question. |

### `GoogleCloudContactcenterinsightsV1DimensionQaQuestionDimensionMetadata`

Metadata about the QA question dimension.

| Property | Type | Description |
|----------|------|-------------|
| `qaQuestionId` | `string` | Optional. The QA question ID. |
| `qaScorecardId` | `string` | Optional. The QA scorecard ID. |
| `questionBody` | `string` | Optional. The full body of the question. |

### `GoogleCloudContactcenterinsightsV1DimensionQaScorecardDimensionMetadata`

Metadata about the QA scorecard dimension.

| Property | Type | Description |
|----------|------|-------------|
| `qaScorecardId` | `string` | Optional. The QA scorecard ID. |

### `GoogleCloudContactcenterinsightsV1EncryptionSpec`

A customer-managed encryption key specification that can be applied to all created resources (e.g. `Conversation`).

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Required. The name of customer-managed encryption key that is used to secure a resource and its s... |
| `name` | `string` | Immutable. The resource name of the encryption key specification resource. Format: projects/{proj... |

### `GoogleCloudContactcenterinsightsV1Entity`

The data for an entity annotation. Represents a phrase in the conversation that is a known entity, such as a person, an organization, or location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The representative name for the entity. |
| `metadata` | `object` | Metadata associated with the entity. For most entity types, the metadata is a Wikipedia URL (`wik... |
| `salience` | `number` | The salience score associated with the entity in the [0, 1.0] range. The salience score for an en... |
| `sentiment` | `GoogleCloudContactcenterinsightsV1SentimentData` | The aggregate sentiment expressed for this entity in the conversation. |
| `type` | `string` | The entity type. |

### `GoogleCloudContactcenterinsightsV1EntityMentionData`

The data for an entity mention annotation. This represents a mention of an `Entity` in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `entityUniqueId` | `string` | The key of this entity in conversation entities. Can be used to retrieve the exact `Entity` this ... |
| `sentiment` | `GoogleCloudContactcenterinsightsV1SentimentData` | Sentiment expressed for this mention of the entity. |
| `type` | `string` | The type of the entity mention. |

### `GoogleCloudContactcenterinsightsV1ExactMatchConfig`

Exact match configuration.

| Property | Type | Description |
|----------|------|-------------|
| `caseSensitive` | `boolean` | Whether to consider case sensitivity when performing an exact match. |

### `GoogleCloudContactcenterinsightsV1ExportInsightsDataMetadata`

Metadata for an export insights operation.

| Property | Type | Description |
|----------|------|-------------|
| `completedExportCount` | `integer` | The number of conversations that were exported successfully. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `failedExportCount` | `integer` | The number of conversations that failed to be exported. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during export operation that might cause the operation output to be incomplete. |
| `request` | `GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest` | The original request for export. |

### `GoogleCloudContactcenterinsightsV1ExportInsightsDataRequest`

The request to export insights.

| Property | Type | Description |
|----------|------|-------------|
| `bigQueryDestination` | `GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination` | Specified if sink is a BigQuery table. |
| `exportSchemaVersion` | `string` | Optional. Version of the export schema. |
| `filter` | `string` | A filter to reduce results to a specific subset. Useful for exporting conversations with specific... |
| `kmsKey` | `string` | A fully qualified KMS key name for BigQuery tables protected by CMEK. Format: projects/{project}/... |
| `parent` | `string` | Required. The parent resource to export data from. |
| `writeDisposition` | `string` | Options for what to do if the destination table already exists. |

### `GoogleCloudContactcenterinsightsV1ExportInsightsDataRequestBigQueryDestination`

A BigQuery Table Reference.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Required. The name of the BigQuery dataset that the snapshot result should be exported to. If thi... |
| `projectId` | `string` | A project ID or number. If specified, then export will attempt to write data to this project inst... |
| `table` | `string` | The BigQuery table name to which the insights data should be written. If this table does not exis... |

### `GoogleCloudContactcenterinsightsV1ExportInsightsDataResponse`

Response for an export insights operation.

### `GoogleCloudContactcenterinsightsV1ExportIssueModelMetadata`

Metadata used for export issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1ExportIssueModelRequest` | The original export request. |

### `GoogleCloudContactcenterinsightsV1ExportIssueModelRequest`

Request to export an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination` | Google Cloud Storage URI to export the issue model to. |
| `name` | `string` | Required. The issue model to export. |

### `GoogleCloudContactcenterinsightsV1ExportIssueModelRequestGcsDestination`

Google Cloud Storage Object URI to save the issue model to.

| Property | Type | Description |
|----------|------|-------------|
| `objectUri` | `string` | Required. Format: `gs:///` |

### `GoogleCloudContactcenterinsightsV1ExportIssueModelResponse`

Response from export issue model

### `GoogleCloudContactcenterinsightsV1FaqAnswerData`

Agent Assist frequently-asked-question answer data.

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` | The piece of text from the `source` knowledge base document. |
| `confidenceScore` | `number` | The system's confidence score that this answer is a good match for this conversation, ranging fro... |
| `metadata` | `object` | Map that contains metadata about the FAQ answer and the document that it originates from. |
| `queryRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `question` | `string` | The corresponding FAQ question. |
| `source` | `string` | The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeB... |

### `GoogleCloudContactcenterinsightsV1FeedbackLabel`

Represents a conversation, resource, and label provided by the user. Can take the form of a string label or a QaAnswer label. QaAnswer labels are used for Quality AI example conversations. String labels are used for Topic Modeling. AgentAssistSummary labels are used for Agent Assist Summarization.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time of the label. |
| `label` | `string` | String label used for Topic Modeling. |
| `labeledResource` | `string` | Name of the resource to be labeled. Supported resources are: * `projects/{project}/locations/{loc... |
| `name` | `string` | Immutable. Resource name of the FeedbackLabel. Format: projects/{project}/locations/{location}/co... |
| `qaAnswerLabel` | `GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue` | QaAnswer label used for Quality AI example conversations. |
| `updateTime` | `string` | Output only. Update time of the label. |

### `GoogleCloudContactcenterinsightsV1FinalizeAssessmentRequest`

The message to finalize an assessment. Finalizing makes an assessment and its notes immutable.

### `GoogleCloudContactcenterinsightsV1GcsSource`

A Cloud Storage source of conversation data.

| Property | Type | Description |
|----------|------|-------------|
| `audioUri` | `string` | Cloud Storage URI that points to a file that contains the conversation audio. |
| `transcriptUri` | `string` | Immutable. Cloud Storage URI that points to a file that contains the conversation transcript. |

### `GoogleCloudContactcenterinsightsV1GenerateConversationSignedAudioResponse`

The response from a GenerateConversationSignedAudio request.

| Property | Type | Description |
|----------|------|-------------|
| `signedAudioUris` | `GoogleCloudContactcenterinsightsV1SignedAudioUris` | The signed uris for the audio. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightConversationTranscript`

The conversation transcript for the chart.

| Property | Type | Description |
|----------|------|-------------|
| `conversationId` | `string` | The conversation id of the chart. |
| `createTime` | `string` | Output only. The create time of the conversation. |
| `messages` | `array<GoogleCloudContactcenterinsightsV1GenerativeInsightConversationTranscriptMessage>` | Ordered list of messages, including user inputs and system responses. |
| `updateTime` | `string` | Output only. The update time of the conversation. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightConversationTranscriptMessage`

The message in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. For user messages, this is the time at which the system received the message. For sy... |
| `messageId` | `string` | The message id of the message. |
| `systemMessageWrapper` | `GoogleCloudContactcenterinsightsV1GenerativeInsightConversationTranscriptMessageSystemMessages` | A wrapper for system messages per turn. |
| `userMessage` | `GoogleCloudContactcenterinsightsV1GenerativeInsightConversationTranscriptMessageUserMessage` | A message from the user that is interacting with the system. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightConversationTranscriptMessageSystemMessage`

A message from the system in response to the user. This message can also be a message from the user as historical context for multiturn conversations with the system.

| Property | Type | Description |
|----------|------|-------------|
| `chartSpec` | `object` | Chart spec from LLM |
| `generatedSqlQuery` | `string` | Raw SQL from LLM, before templatization |
| `textMessage` | `GoogleCloudContactcenterinsightsV1GenerativeInsightConversationTranscriptMessageSystemMessageTextOutput` | A direct natural language response to the user message. |
| `userProvidedChartSpec` | `object` | Optional. User provided chart spec |
| `userProvidedSqlQuery` | `string` | Optional. User provided SQL query |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightConversationTranscriptMessageSystemMessageTextOutput`

A text output message from the system.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `array<string>` | The parts of the message. |
| `textType` | `string` | The type of the text message. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightConversationTranscriptMessageSystemMessages`

A wrapper for system messages per turn.

| Property | Type | Description |
|----------|------|-------------|
| `systemMessages` | `array<GoogleCloudContactcenterinsightsV1GenerativeInsightConversationTranscriptMessageSystemMessage>` | A message from the system in response to the user. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightConversationTranscriptMessageUserMessage`

The user message.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | A message from the user that is interacting with the system. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsights`

Request that use natural language query to generate the chart.

| Property | Type | Description |
|----------|------|-------------|
| `chartCheckpoint` | `GoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint` | The chart checkpoint used to generate the chart. |
| `chartConversations` | `array<GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation>` | Output only. The chart conversations used to generate the chart. |
| `chartSpec` | `object` | Chart spec for the chart. |
| `request` | `object` |  |
| `sqlComparisonKey` | `string` | Optional. For charts with comparison, this key will determine the metric that will be compared be... |
| `sqlQuery` | `string` | SQL query used to generate the chart. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightsChartCheckpoint`

The current chart checkpoint state.

| Property | Type | Description |
|----------|------|-------------|
| `revisionId` | `string` | The revision id of the chart. |
| `sessionId` | `string` | The session id of the chart. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversation`

The conversation used to generate the chart.

| Property | Type | Description |
|----------|------|-------------|
| `conversationId` | `string` | The conversation id of the chart. |
| `createTime` | `string` | The create time of the conversation. |
| `messages` | `array<GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage>` | Ordered list of messages, including user inputs and system responses. |
| `updateTime` | `string` | The update time of the conversation. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessage`

The message in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | For user messages, this is the time at which the system received the message. For system messages... |
| `messageId` | `string` | The message id of the message. |
| `systemMessage` | `GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage` | A message from the system in response to the user. |
| `userMessage` | `GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage` | A message from the user that is interacting with the system. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessage`

A message from the system in response to the user. This message can also be a message from the user as historical context for multiturn conversations with the system.

| Property | Type | Description |
|----------|------|-------------|
| `chartSpec` | `object` | Chart spec from LLM |
| `generatedSqlQuery` | `string` | Raw SQL from LLM, before templatization |
| `textOutput` | `GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput` | A direct natural language response to the user message. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageSystemMessageTextOutput`

A text output message from the system.

| Property | Type | Description |
|----------|------|-------------|
| `texts` | `array<string>` | The parts of the message. |
| `type` | `string` | The type of the text message. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightsChartConversationMessageUserMessage`

The user message.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | A message from the user that is interacting with the system. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightsMetadata`

The metadata for generative insights.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessages` | `array<GoogleRpcStatus>` | The error message when the generative insights request fails. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightsRequest`

The request for generative insights.

| Property | Type | Description |
|----------|------|-------------|
| `chart` | `string` | The full name of the chart resource this request corresponds to. Format: projects/{project}/locat... |
| `comparisonFilter` | `string` | Optional. Filter for the data that can be specified in addition to the natural language query. Th... |
| `filter` | `string` | Filter for the data that can be specified in addition to the natural language query. Users are en... |
| `naturalLanguageQuery` | `string` | The natural language query specified by the user. If this field is specified, `sql_query` will be... |
| `revisionId` | `string` | Optional. The revision id that maps to the state of the chart state revision. When specified, the... |
| `sessionId` | `string` | Optional. The session id of the conversation. If the session id is not specified, backend will ge... |
| `sqlComparisonKey` | `string` | Optional. For charts with comparison, this key will determine the metric that will be compared be... |
| `sqlQuery` | `string` | Optional. The SQL query specified by the user. This query must be in BigQuery SQL dialect. The `f... |
| `userProvidedChartSpec` | `object` | Optional. The user provided chart spec for the chart. This will be used to override the visual sp... |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightsResponse`

The response for generative insights.

| Property | Type | Description |
|----------|------|-------------|
| `generativeResponses` | `array<GoogleCloudContactcenterinsightsV1GenerativeInsightsResponseGenerativeResponse>` | The full list of generative responses. Each response is ordered by time. |
| `transcript` | `GoogleCloudContactcenterinsightsV1GenerativeInsightConversationTranscript` | The transcript of the generative insights conversation. |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightsResponseGenerativeResponse`

Wrapper for storing the generative response for a chart.

| Property | Type | Description |
|----------|------|-------------|
| `chartSpec` | `object` | The chart spec for the data. This will be specified in the vega-lite or vega format. |
| `generatedSqlQuery` | `string` | The generated SQL query from the LLM. Will be populated during the chart building phase. The gene... |
| `textMessage` | `GoogleCloudContactcenterinsightsV1GenerativeInsightsResponseGenerativeResponseTextOutput` | The text output from the LLM. Will be populated during the chart building phase. For a reloaded c... |
| `textOutput` | `string` | The text output from the LLM. Will be populated during the chart building phase. For a reloaded c... |

### `GoogleCloudContactcenterinsightsV1GenerativeInsightsResponseGenerativeResponseTextOutput`

Wrapper for text output.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `array<string>` | The text output from the LLM. |
| `textType` | `string` | The type of text output. |

### `GoogleCloudContactcenterinsightsV1HoldData`

The data for a hold annotation.

### `GoogleCloudContactcenterinsightsV1ImportIssueModelMetadata`

Metadata used for import issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1ImportIssueModelRequest` | The original import request. |

### `GoogleCloudContactcenterinsightsV1ImportIssueModelRequest`

Request to import an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createNewModel` | `boolean` | Optional. If set to true, will create an issue model from the imported file with randomly generat... |
| `gcsSource` | `GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource` | Google Cloud Storage source message. |
| `parent` | `string` | Required. The parent resource of the issue model. |

### `GoogleCloudContactcenterinsightsV1ImportIssueModelRequestGcsSource`

Google Cloud Storage Object URI to get the issue model file from.

| Property | Type | Description |
|----------|------|-------------|
| `objectUri` | `string` | Required. Format: `gs:///` |

### `GoogleCloudContactcenterinsightsV1ImportIssueModelResponse`

Response from import issue model

| Property | Type | Description |
|----------|------|-------------|
| `issueModel` | `GoogleCloudContactcenterinsightsV1IssueModel` | The issue model that was imported. |

### `GoogleCloudContactcenterinsightsV1IngestConversationsMetadata`

The metadata for an IngestConversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `ingestConversationsStats` | `GoogleCloudContactcenterinsightsV1IngestConversationsMetadataIngestConversationsStats` | Output only. Statistics for IngestConversations operation. |
| `partialErrors` | `array<GoogleRpcStatus>` | Output only. Partial errors during ingest operation that might cause the operation output to be i... |
| `request` | `GoogleCloudContactcenterinsightsV1IngestConversationsRequest` | Output only. The original request for ingest. |
| `sampledConversations` | `array<string>` | Output only. Stores the conversation resources produced by ingest sampling operations. |

### `GoogleCloudContactcenterinsightsV1IngestConversationsMetadataIngestConversationsStats`

Statistics for IngestConversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `duplicatesSkippedCount` | `integer` | Output only. The number of objects skipped because another conversation with the same transcript ... |
| `failedIngestCount` | `integer` | Output only. The number of objects which were unable to be ingested due to errors. The errors are... |
| `processedObjectCount` | `integer` | Output only. The number of objects processed during the ingest operation. |
| `successfulIngestCount` | `integer` | Output only. The number of new conversations added during this ingest operation. |

### `GoogleCloudContactcenterinsightsV1IngestConversationsRequest`

The request to ingest conversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversationConfig` | `GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig` | Configuration that applies to all conversations. |
| `gcsSource` | `GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource` | A cloud storage bucket source. Note that any previously ingested objects from the source will be ... |
| `parent` | `string` | Required. The parent resource for new conversations. |
| `redactionConfig` | `GoogleCloudContactcenterinsightsV1RedactionConfig` | Optional. DLP settings for transcript redaction. Optional, will default to the config specified i... |
| `sampleSize` | `integer` | Optional. If set, this fields indicates the number of objects to ingest from the Cloud Storage bu... |
| `speechConfig` | `GoogleCloudContactcenterinsightsV1SpeechConfig` | Optional. Default Speech-to-Text configuration. Optional, will default to the config specified in... |
| `transcriptObjectConfig` | `GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig` | Configuration for when `source` contains conversation transcripts. |

### `GoogleCloudContactcenterinsightsV1IngestConversationsRequestConversationConfig`

Configuration that applies to all conversations.

| Property | Type | Description |
|----------|------|-------------|
| `agentChannel` | `integer` | Optional. Indicates which of the channels, 1 or 2, contains the agent. Note that this must be set... |
| `agentId` | `string` | Optional. An opaque, user-specified string representing a human agent who handled all conversatio... |
| `customerChannel` | `integer` | Optional. Indicates which of the channels, 1 or 2, contains the agent. Note that this must be set... |

### `GoogleCloudContactcenterinsightsV1IngestConversationsRequestGcsSource`

Configuration for Cloud Storage bucket sources.

| Property | Type | Description |
|----------|------|-------------|
| `audioBucketUri` | `string` | Optional. The Cloud Storage path to the conversation audio file. Note that: [1] Audio files will ... |
| `bucketObjectType` | `string` | Optional. Specifies the type of the objects in `bucket_uri`. Avoid passing this. This is inferred... |
| `bucketUri` | `string` | Optional. The Cloud Storage bucket containing source objects. Avoid passing this. Pass this throu... |
| `customMetadataKeys` | `array<string>` | Optional. Custom keys to extract as conversation labels from metadata files in `metadata_bucket_u... |
| `metadataBucketUri` | `string` | Optional. The Cloud Storage path to the conversation metadata. Note that: [1] Metadata files are ... |
| `transcriptBucketUri` | `string` | Optional. The Cloud Storage path to the conversation transcripts. Note that: [1] Transcript files... |

### `GoogleCloudContactcenterinsightsV1IngestConversationsRequestTranscriptObjectConfig`

Configuration for processing transcript objects.

| Property | Type | Description |
|----------|------|-------------|
| `medium` | `string` | Required. The medium transcript objects represent. |

### `GoogleCloudContactcenterinsightsV1IngestConversationsResponse`

The response to an IngestConversations operation.

### `GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecMetadata`

Metadata for initializing a location-level encryption specification.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during initializing operation that might cause the operation output to be incomplete. |
| `request` | `GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest` | Output only. The original request for initialization. |

### `GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecRequest`

The request to initialize a location-level encryption specification.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionSpec` | `GoogleCloudContactcenterinsightsV1EncryptionSpec` | Required. The encryption spec used for CMEK encryption. It is required that the kms key is in the... |

### `GoogleCloudContactcenterinsightsV1InitializeEncryptionSpecResponse`

The response to initialize a location-level encryption specification.

### `GoogleCloudContactcenterinsightsV1Intent`

The data for an intent. Represents a detected intent in the conversation, for example MAKES_PROMISE.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the intent. |
| `id` | `string` | The unique identifier of the intent. |

### `GoogleCloudContactcenterinsightsV1IntentMatchData`

The data for an intent match. Represents an intent match for a text segment in the conversation. A text segment can be part of a sentence, a complete sentence, or an utterance with multiple sentences.

| Property | Type | Description |
|----------|------|-------------|
| `intentUniqueId` | `string` | The id of the matched intent. Can be used to retrieve the corresponding intent information. |

### `GoogleCloudContactcenterinsightsV1InterruptionData`

The data for an interruption annotation.

### `GoogleCloudContactcenterinsightsV1Issue`

The issue resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which this issue was created. |
| `displayDescription` | `string` | Representative description of the issue. |
| `displayName` | `string` | The representative name for the issue. |
| `name` | `string` | Immutable. The resource name of the issue. Format: projects/{project}/locations/{location}/issueM... |
| `sampleUtterances` | `array<string>` | Output only. Resource names of the sample representative utterances that match to this issue. |
| `updateTime` | `string` | Output only. The most recent time that this issue was updated. |

### `GoogleCloudContactcenterinsightsV1IssueAssignment`

Information about the issue.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Immutable. Display name of the assigned issue. This field is set at time of analysis and immutabl... |
| `issue` | `string` | Resource name of the assigned issue. |
| `score` | `number` | Score indicating the likelihood of the issue assignment. currently bounded on [0,1]. |

### `GoogleCloudContactcenterinsightsV1IssueMatchData`

The data for an issue match annotation.

| Property | Type | Description |
|----------|------|-------------|
| `issueAssignment` | `GoogleCloudContactcenterinsightsV1IssueAssignment` | Information about the issue's assignment. |

### `GoogleCloudContactcenterinsightsV1IssueModel`

The issue model resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which this issue model was created. |
| `displayName` | `string` | The representative name for the issue model. |
| `inputDataConfig` | `GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig` | Configs for the input data that used to create the issue model. |
| `issueCount` | `string` | Output only. Number of issues in this issue model. |
| `languageCode` | `string` | Language of the model. |
| `modelType` | `string` | Type of the model. |
| `name` | `string` | Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/... |
| `state` | `string` | Output only. State of the model. |
| `trainingStats` | `GoogleCloudContactcenterinsightsV1IssueModelLabelStats` | Output only. Immutable. The issue model's label statistics on its training data. |
| `updateTime` | `string` | Output only. The most recent time at which the issue model was updated. |

### `GoogleCloudContactcenterinsightsV1IssueModelInputDataConfig`

Configs for the input data used to create the issue model.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | A filter to reduce the conversations used for training the model to a specific subset. Refer to h... |
| `medium` | `string` | Medium of conversations used in training data. This field is being deprecated. To specify the med... |
| `trainingConversationsCount` | `string` | Output only. Number of conversations used in training. Output only. |

### `GoogleCloudContactcenterinsightsV1IssueModelLabelStats`

Aggregated statistics about an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `analyzedConversationsCount` | `string` | Number of conversations the issue model has analyzed at this point in time. |
| `issueStats` | `object` | Statistics on each issue. Key is the issue's resource name. |
| `unclassifiedConversationsCount` | `string` | Number of analyzed conversations for which no issue was applicable at this point in time. |

### `GoogleCloudContactcenterinsightsV1IssueModelLabelStatsIssueStats`

Aggregated statistics about an issue.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Display name of the issue. |
| `issue` | `string` | Issue resource. Format: projects/{project}/locations/{location}/issueModels/{issue_model}/issues/... |
| `labeledConversationsCount` | `string` | Number of conversations attached to the issue at this point in time. |

### `GoogleCloudContactcenterinsightsV1IssueModelResult`

Issue Modeling result on a conversation.

| Property | Type | Description |
|----------|------|-------------|
| `issueModel` | `string` | Issue model that generates the result. Format: projects/{project}/locations/{location}/issueModel... |
| `issues` | `array<GoogleCloudContactcenterinsightsV1IssueAssignment>` | All the matched issues. |

### `GoogleCloudContactcenterinsightsV1ListAllFeedbackLabelsResponse`

The response for listing all feedback labels.

| Property | Type | Description |
|----------|------|-------------|
| `feedbackLabels` | `array<GoogleCloudContactcenterinsightsV1FeedbackLabel>` | The feedback labels that match the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContactcenterinsightsV1ListAnalysesResponse`

The response to list analyses.

| Property | Type | Description |
|----------|------|-------------|
| `analyses` | `array<GoogleCloudContactcenterinsightsV1Analysis>` | The analyses that match the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContactcenterinsightsV1ListAnalysisRulesResponse`

The response of listing views.

| Property | Type | Description |
|----------|------|-------------|
| `analysisRules` | `array<GoogleCloudContactcenterinsightsV1AnalysisRule>` | The analysis_rule that match the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContactcenterinsightsV1ListAssessmentRulesResponse`

The response of listing assessment rules.

| Property | Type | Description |
|----------|------|-------------|
| `assessmentRules` | `array<GoogleCloudContactcenterinsightsV1AssessmentRule>` | The assessment rules that match the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContactcenterinsightsV1ListAssessmentsResponse`

The response of listing assessments.

| Property | Type | Description |
|----------|------|-------------|
| `assessments` | `array<GoogleCloudContactcenterinsightsV1Assessment>` | The assessments that match the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContactcenterinsightsV1ListAuthorizedViewSetsResponse`

The response from a ListAuthorizedViewSet request.

| Property | Type | Description |
|----------|------|-------------|
| `authorizedViewSets` | `array<GoogleCloudContactcenterinsightsV1AuthorizedViewSet>` | The AuthorizedViewSets under the parent. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContactcenterinsightsV1ListAuthorizedViewsResponse`

The response from a ListAuthorizedViews request.

| Property | Type | Description |
|----------|------|-------------|
| `authorizedViews` | `array<GoogleCloudContactcenterinsightsV1AuthorizedView>` | The AuthorizedViews under the parent. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContactcenterinsightsV1ListAutoLabelingRulesResponse`

The response message for listing auto labeling rules.

| Property | Type | Description |
|----------|------|-------------|
| `autoLabelingRules` | `array<GoogleCloudContactcenterinsightsV1AutoLabelingRule>` | The auto labeling rules. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContactcenterinsightsV1ListChartsResponse`

The response of listing charts.

| Property | Type | Description |
|----------|------|-------------|
| `charts` | `array<GoogleCloudContactcenterinsightsV1Chart>` | The charts under the parent. |
| `nextPageToken` | `string` | The value returned by the last `ListChartsResponse`. This value indicates that this is a continua... |

### `GoogleCloudContactcenterinsightsV1ListConversationsResponse`

The response of listing conversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversations` | `array<GoogleCloudContactcenterinsightsV1Conversation>` | The conversations that match the request. |
| `nextPageToken` | `string` | A token which can be sent as `page_token` to retrieve the next page. If this field is set, it mea... |

### `GoogleCloudContactcenterinsightsV1ListDashboardsResponse`

The response of listing dashboards.

| Property | Type | Description |
|----------|------|-------------|
| `dashboards` | `array<GoogleCloudContactcenterinsightsV1Dashboard>` | The dashboards under the parent. |
| `nextPageToken` | `string` | The value returned by the last `ListDashboardsResponse`. This value indicates that this is a cont... |

### `GoogleCloudContactcenterinsightsV1ListDatasetsResponse`

The response to list datasets.

| Property | Type | Description |
|----------|------|-------------|
| `datasets` | `array<GoogleCloudContactcenterinsightsV1Dataset>` | The datasets that match the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContactcenterinsightsV1ListFeedbackLabelsResponse`

The response for listing feedback labels.

| Property | Type | Description |
|----------|------|-------------|
| `feedbackLabels` | `array<GoogleCloudContactcenterinsightsV1FeedbackLabel>` | The feedback labels that match the request. |
| `nextPageToken` | `string` | The next page token. |

### `GoogleCloudContactcenterinsightsV1ListIssueModelsResponse`

The response of listing issue models.

| Property | Type | Description |
|----------|------|-------------|
| `issueModels` | `array<GoogleCloudContactcenterinsightsV1IssueModel>` | The issue models that match the request. |

### `GoogleCloudContactcenterinsightsV1ListIssuesResponse`

The response of listing issues.

| Property | Type | Description |
|----------|------|-------------|
| `issues` | `array<GoogleCloudContactcenterinsightsV1Issue>` | The issues that match the request. |

### `GoogleCloudContactcenterinsightsV1ListNotesResponse`

The response of listing notes.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `notes` | `array<GoogleCloudContactcenterinsightsV1Note>` | The notes that match the request. |

### `GoogleCloudContactcenterinsightsV1ListPhraseMatchersResponse`

The response of listing phrase matchers.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `phraseMatchers` | `array<GoogleCloudContactcenterinsightsV1PhraseMatcher>` | The phrase matchers that match the request. |

### `GoogleCloudContactcenterinsightsV1ListQaQuestionTagsResponse`

The response from a ListQaQuestionTags request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `qaQuestionTags` | `array<GoogleCloudContactcenterinsightsV1QaQuestionTag>` | The parent resource of the questions. |

### `GoogleCloudContactcenterinsightsV1ListQaQuestionsResponse`

The response from a ListQaQuestions request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `qaQuestions` | `array<GoogleCloudContactcenterinsightsV1QaQuestion>` | The QaQuestions under the parent. |

### `GoogleCloudContactcenterinsightsV1ListQaScorecardRevisionsResponse`

The response from a ListQaScorecardRevisions request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `qaScorecardRevisions` | `array<GoogleCloudContactcenterinsightsV1QaScorecardRevision>` | The QaScorecards under the parent. |

### `GoogleCloudContactcenterinsightsV1ListQaScorecardsResponse`

The response from a ListQaScorecards request.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `qaScorecards` | `array<GoogleCloudContactcenterinsightsV1QaScorecard>` | The QaScorecards under the parent. |

### `GoogleCloudContactcenterinsightsV1ListViewsResponse`

The response of listing views.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |
| `views` | `array<GoogleCloudContactcenterinsightsV1View>` | The views that match the request. |

### `GoogleCloudContactcenterinsightsV1Note`

The conversation assessment note resource.

| Property | Type | Description |
|----------|------|-------------|
| `assessmentNote` | `GoogleCloudContactcenterinsightsV1NoteAssessmentNote` | The note is associated to the entire parent assessment. |
| `content` | `string` | The note content. |
| `conversationTurnNote` | `GoogleCloudContactcenterinsightsV1NoteConversationTurnNote` | The note is associated with a conversation turn. |
| `createTime` | `string` | Output only. The time at which the note was created. |
| `name` | `string` | Identifier. The resource name of the note. Format: projects/{project}/locations/{location}/conver... |
| `noteCreator` | `GoogleCloudContactcenterinsightsV1UserInfo` | Output only. The user that created the note. |
| `qaQuestionNote` | `GoogleCloudContactcenterinsightsV1NoteQaQuestionNote` | The note is associated with a QA question in one of the conversation's scorecard results. |
| `updateTime` | `string` | Output only. The time at which the note was last updated. |

### `GoogleCloudContactcenterinsightsV1NoteAssessmentNote`

A note about the entire parent assessment.

### `GoogleCloudContactcenterinsightsV1NoteConversationTurnNote`

A note about a conversation turn.

| Property | Type | Description |
|----------|------|-------------|
| `turnIndex` | `integer` | The conversation turn index that the note is associated with. |

### `GoogleCloudContactcenterinsightsV1NoteQaQuestionNote`

A note about a QA question.

| Property | Type | Description |
|----------|------|-------------|
| `qaQuestion` | `string` | The question resource that the note is associated with. |

### `GoogleCloudContactcenterinsightsV1PhraseMatchData`

The data for a matched phrase matcher. Represents information identifying a phrase matcher for a given match.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the phrase matcher. |
| `phraseMatcher` | `string` | The unique identifier (the resource name) of the phrase matcher. |

### `GoogleCloudContactcenterinsightsV1PhraseMatchRule`

The data for a phrase match rule.

| Property | Type | Description |
|----------|------|-------------|
| `config` | `GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig` | Provides additional information about the rule that specifies how to apply the rule. |
| `negated` | `boolean` | Specifies whether the phrase must be missing from the transcript segment or present in the transc... |
| `query` | `string` | Required. The phrase to be matched. |

### `GoogleCloudContactcenterinsightsV1PhraseMatchRuleConfig`

Configuration information of a phrase match rule.

| Property | Type | Description |
|----------|------|-------------|
| `exactMatchConfig` | `GoogleCloudContactcenterinsightsV1ExactMatchConfig` | The configuration for the exact match rule. |
| `regexMatchConfig` | `GoogleCloudContactcenterinsightsV1RegexMatchConfig` | The configuration for the regex match rule. |

### `GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup`

A message representing a rule in the phrase matcher.

| Property | Type | Description |
|----------|------|-------------|
| `phraseMatchRules` | `array<GoogleCloudContactcenterinsightsV1PhraseMatchRule>` | A list of phrase match rules that are included in this group. |
| `type` | `string` | Required. The type of this phrase match rule group. |

### `GoogleCloudContactcenterinsightsV1PhraseMatcher`

The phrase matcher resource.

| Property | Type | Description |
|----------|------|-------------|
| `activationUpdateTime` | `string` | Output only. The most recent time at which the activation status was updated. |
| `active` | `boolean` | Applies the phrase matcher only when it is active. |
| `displayName` | `string` | The human-readable name of the phrase matcher. |
| `name` | `string` | The resource name of the phrase matcher. Format: projects/{project}/locations/{location}/phraseMa... |
| `phraseMatchRuleGroups` | `array<GoogleCloudContactcenterinsightsV1PhraseMatchRuleGroup>` | A list of phase match rule groups that are included in this matcher. |
| `revisionCreateTime` | `string` | Output only. The timestamp of when the revision was created. It is also the create time when a ne... |
| `revisionId` | `string` | Output only. Immutable. The revision ID of the phrase matcher. A new revision is committed whenev... |
| `roleMatch` | `string` | The role whose utterances the phrase matcher should be matched against. If the role is ROLE_UNSPE... |
| `type` | `string` | Required. The type of this phrase matcher. |
| `updateTime` | `string` | Output only. The most recent time at which the phrase matcher was updated. |
| `versionTag` | `string` | The customized version tag to use for the phrase matcher. If not specified, it will default to `r... |

### `GoogleCloudContactcenterinsightsV1PublishAssessmentRequest`

The message to publish an assessment. Draft and appealed assessments can be published. Publishing simply changes the state of the assessment to published, allowing the console and authorized views to filter on the state.

### `GoogleCloudContactcenterinsightsV1QaAnswer`

An answer to a QaQuestion.

| Property | Type | Description |
|----------|------|-------------|
| `answerSources` | `array<GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource>` | Lists all answer sources containing one or more answer values of a specific source type, e.g., al... |
| `answerValue` | `GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue` | The answer value from this source. This field is populated by default, unless the question has a ... |
| `conversation` | `string` | The conversation the answer applies to. |
| `qaQuestion` | `string` | The QaQuestion answered by this answer. |
| `questionBody` | `string` | Question text. E.g., "Did the agent greet the customer?" |
| `tags` | `array<string>` | User-defined list of arbitrary tags. Matches the value from QaScorecard.ScorecardQuestion.tags. U... |

### `GoogleCloudContactcenterinsightsV1QaAnswerAnswerSource`

A question may have multiple answers from varying sources, one of which becomes the "main" answer above. AnswerSource represents each individual answer.

| Property | Type | Description |
|----------|------|-------------|
| `answerValue` | `GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue` | The answer value from this source. This field is populated by default, unless the question has a ... |
| `sourceType` | `string` | What created the answer. |

### `GoogleCloudContactcenterinsightsV1QaAnswerAnswerValue`

Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines the possible answer values for a question.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Boolean value. |
| `key` | `string` | A short string used as an identifier. Matches the value used in QaQuestion.AnswerChoice.key. |
| `naValue` | `boolean` | A value of "Not Applicable (N/A)". Should only ever be `true`. |
| `normalizedScore` | `number` | Output only. Normalized score of the questions. Calculated as score / potential_score. |
| `numValue` | `number` | Numerical value. |
| `potentialScore` | `number` | Output only. The maximum potential score of the question. |
| `score` | `number` | Output only. Numerical score of the answer. |
| `skipValue` | `boolean` | Output only. A value of "Skip". If provided, this field may only be set to `true`. If a question ... |
| `strValue` | `string` | String value. |

### `GoogleCloudContactcenterinsightsV1QaQuestion`

A single question to be scored by the Insights QA feature.

| Property | Type | Description |
|----------|------|-------------|
| `abbreviation` | `string` | Short, descriptive string, used in the UI where it's not practical to display the full question b... |
| `answerChoices` | `array<GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice>` | A list of valid answers to the question, which the LLM must choose from. |
| `answerInstructions` | `string` | Instructions describing how to determine the answer. |
| `createTime` | `string` | Output only. The time at which this question was created. |
| `metrics` | `GoogleCloudContactcenterinsightsV1QaQuestionMetrics` | Metrics of the underlying tuned LLM over a holdout/test set while fine tuning the underlying LLM ... |
| `name` | `string` | Identifier. The resource name of the question. Format: projects/{project}/locations/{location}/qa... |
| `order` | `integer` | Defines the order of the question within its parent scorecard revision. |
| `predefinedQuestionConfig` | `GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig` | The configuration of the predefined question. This field will only be set if the Question Type is... |
| `qaQuestionDataOptions` | `GoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions` | Options for configuring the data used to generate the QA question. |
| `questionBody` | `string` | Question text. E.g., "Did the agent greet the customer?" |
| `questionType` | `string` | The type of question. |
| `tags` | `array<string>` | Questions are tagged for categorization and scoring. Tags can either be: - Default Tags: These ar... |
| `tuningMetadata` | `GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata` | Metadata about the tuning operation for the question.This field will only be populated if and onl... |
| `updateTime` | `string` | Output only. The most recent time at which the question was updated. |

### `GoogleCloudContactcenterinsightsV1QaQuestionAnswerChoice`

Message representing a possible answer to the question.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Boolean value. |
| `key` | `string` | A short string used as an identifier. |
| `naValue` | `boolean` | A value of "Not Applicable (N/A)". If provided, this field may only be set to `true`. If a questi... |
| `numValue` | `number` | Numerical value. |
| `score` | `number` | Numerical score of the answer, used for generating the overall score of a QaScorecardResult. If t... |
| `strValue` | `string` | String value. |

### `GoogleCloudContactcenterinsightsV1QaQuestionMetrics`

A wrapper representing metrics calculated against a test-set on a LLM that was fine tuned for this question.

| Property | Type | Description |
|----------|------|-------------|
| `accuracy` | `number` | Output only. Accuracy of the model. Measures the percentage of correct answers the model gave on ... |

### `GoogleCloudContactcenterinsightsV1QaQuestionPredefinedQuestionConfig`

Configuration for a predefined question. This field will only be set if the Question Type is predefined.

| Property | Type | Description |
|----------|------|-------------|
| `type` | `string` | The type of the predefined question. |

### `GoogleCloudContactcenterinsightsV1QaQuestionQaQuestionDataOptions`

Options for configuring the data used to generate the QA question.

| Property | Type | Description |
|----------|------|-------------|
| `conversationDataOptions` | `GoogleCloudContactcenterinsightsV1ConversationDataOptions` | Options for configuring the conversation data used to generate the QA question. |

### `GoogleCloudContactcenterinsightsV1QaQuestionTag`

A tag is a resource which aims to categorize a set of questions across multiple scorecards, e.g., "Customer Satisfaction","Billing", etc.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the question tag was created. |
| `displayName` | `string` | Required. A user-specified display name for the tag. |
| `name` | `string` | Identifier. Resource name for the QaQuestionTag Format projects/{project}/locations/{location}/qa... |
| `qaQuestionIds` | `array<string>` | Optional. The list of Scorecard Question IDs that the tag applies to. Each QaQuestionId is repres... |
| `updateTime` | `string` | Output only. The most recent time at which the question tag was updated. |

### `GoogleCloudContactcenterinsightsV1QaQuestionTuningMetadata`

Metadata about the tuning operation for the question. Will only be set if a scorecard containing this question has been tuned.

| Property | Type | Description |
|----------|------|-------------|
| `datasetValidationWarnings` | `array<string>` | A list of any applicable data validation warnings about the question's feedback labels. |
| `totalValidLabelCount` | `string` | Total number of valid labels provided for the question at the time of tuining. |
| `tuningError` | `string` | Error status of the tuning operation for the question. Will only be set if the tuning operation f... |

### `GoogleCloudContactcenterinsightsV1QaScorecard`

A QaScorecard represents a collection of questions to be scored during analysis.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which this scorecard was created. |
| `description` | `string` | A text description explaining the intent of the scorecard. |
| `displayName` | `string` | The user-specified display name of the scorecard. |
| `isDefault` | `boolean` | Whether the scorecard is the default one for the project. A default scorecard cannot be deleted a... |
| `name` | `string` | Identifier. The scorecard name. Format: projects/{project}/locations/{location}/qaScorecards/{qa_... |
| `source` | `string` | Output only. The source of the scorecard. |
| `updateTime` | `string` | Output only. The most recent time at which the scorecard was updated. |

### `GoogleCloudContactcenterinsightsV1QaScorecardResult`

The results of scoring a single conversation against a QaScorecard. Contains a collection of QaAnswers and aggregate score.

| Property | Type | Description |
|----------|------|-------------|
| `agentId` | `string` | ID of the agent that handled the conversation. |
| `conversation` | `string` | The conversation scored by this result. |
| `createTime` | `string` | Output only. The timestamp that the revision was created. |
| `name` | `string` | Identifier. The name of the scorecard result. Format: projects/{project}/locations/{location}/qaS... |
| `normalizedScore` | `number` | The normalized score, which is the score divided by the potential score. Any manual edits are inc... |
| `potentialScore` | `number` | The maximum potential overall score of the scorecard. Any questions answered using `na_value` are... |
| `qaAnswers` | `array<GoogleCloudContactcenterinsightsV1QaAnswer>` | Set of QaAnswers represented in the result. |
| `qaScorecardRevision` | `string` | The QaScorecardRevision scored by this result. |
| `qaTagResults` | `array<GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>` | Collection of tags and their scores. |
| `score` | `number` | The overall numerical score of the result, incorporating any manual edits if they exist. |
| `scoreSources` | `array<GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource>` | List of all individual score sets. |

### `GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult`

Tags and their corresponding results.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedScore` | `number` | The normalized score the tag applies to. |
| `potentialScore` | `number` | The potential score the tag applies to. |
| `score` | `number` | The score the tag applies to. |
| `tag` | `string` | The tag the score applies to. |

### `GoogleCloudContactcenterinsightsV1QaScorecardResultScoreSource`

A scorecard result may have multiple sets of scores from varying sources, one of which becomes the "main" answer above. A ScoreSource represents each individual set of scores.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedScore` | `number` | The normalized score, which is the score divided by the potential score. |
| `potentialScore` | `number` | The maximum potential overall score of the scorecard. Any questions answered using `na_value` are... |
| `qaTagResults` | `array<GoogleCloudContactcenterinsightsV1QaScorecardResultQaTagResult>` | Collection of tags and their scores. |
| `score` | `number` | The overall numerical score of the result. |
| `sourceType` | `string` | What created the score. |

### `GoogleCloudContactcenterinsightsV1QaScorecardRevision`

A revision of a QaScorecard. Modifying published scorecard fields would invalidate existing scorecard results — the questions may have changed, or the score weighting will make existing scores impossible to understand. So changes must create a new revision, rather than modifying the existing resource.

| Property | Type | Description |
|----------|------|-------------|
| `alternateIds` | `array<string>` | Output only. Alternative IDs for this revision of the scorecard, e.g., `latest`. |
| `createTime` | `string` | Output only. The timestamp that the revision was created. |
| `name` | `string` | Identifier. The name of the scorecard revision. Format: projects/{project}/locations/{location}/q... |
| `snapshot` | `GoogleCloudContactcenterinsightsV1QaScorecard` | The snapshot of the scorecard at the time of this revision's creation. |
| `state` | `string` | Output only. State of the scorecard revision, indicating whether it's ready to be used in analysis. |

### `GoogleCloudContactcenterinsightsV1QueryInterval`

A time window for querying conversations.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Required. The end time of the time window. |
| `startTime` | `string` | Required. The start time of the time window. |

### `GoogleCloudContactcenterinsightsV1QueryMetrics`

Request data that use the existing QueryMetrics.

| Property | Type | Description |
|----------|------|-------------|
| `request` | `object` |  |

### `GoogleCloudContactcenterinsightsV1QueryMetricsMetadata`

The metadata from querying metrics.

| Property | Type | Description |
|----------|------|-------------|
| `resultIsTruncated` | `boolean` | Whether the result rows were truncated because the result row size is too large to materialize. |

### `GoogleCloudContactcenterinsightsV1QueryMetricsRequest`

The request for querying metrics.

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<GoogleCloudContactcenterinsightsV1Dimension>` | The dimensions that determine the grouping key for the query. Defaults to no dimension if this fi... |
| `filter` | `string` | Required. Filter to select a subset of conversations to compute the metrics. Must specify a windo... |
| `measureMask` | `string` | Measures to return. Defaults to all measures if this field is unspecified. A valid mask should tr... |
| `timeGranularity` | `string` | The time granularity of each data point in the time series. Defaults to NONE if this field is uns... |

### `GoogleCloudContactcenterinsightsV1QueryMetricsResponse`

The response for querying metrics.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Required. The location of the data. "projects/{project}/locations/{location}" |
| `macroAverageSlice` | `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSlice` | The macro average slice contains aggregated averages across all selected dimensions. i.e. if grou... |
| `slices` | `array<GoogleCloudContactcenterinsightsV1QueryMetricsResponseSlice>` | A slice contains a total and (if the request specified a time granularity) a time series of metri... |
| `updateTime` | `string` | The metrics last update time. |

### `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSlice`

A slice contains a total and (if the request specified a time granularity) a time series of metric values. Each slice contains a unique combination of the cardinality of dimensions from the request. For example, if the request specifies a single ISSUE dimension and it has a cardinality of 2 (i.e. the data used to compute the metrics has 2 issues in total), the response will have 2 slices: * Slice 1 -> dimensions=[Issue 1] * Slice 2 -> dimensions=[Issue 2]

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<GoogleCloudContactcenterinsightsV1Dimension>` | A unique combination of dimensions that this slice represents. |
| `timeSeries` | `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceTimeSeries` | A time series of metric values. This is only populated if the request specifies a time granularit... |
| `total` | `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPoint` | The total metric value. The interval of this data point is [starting create time, ending create t... |

### `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPoint`

A data point contains the metric values mapped to an interval.

| Property | Type | Description |
|----------|------|-------------|
| `conversationMeasure` | `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasure` | The measure related to conversations. |
| `dialogflowInteractionMeasure` | `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointDialogflowInteractionMeasure` | The measure related to dialogflow interactions. |
| `interval` | `GoogleTypeInterval` | The interval that this data point represents. * If this is the total data point, the interval is ... |

### `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasure`

The measure related to conversations.

| Property | Type | Description |
|----------|------|-------------|
| `aaSupervisorAssignedConversationsCount` | `integer` | The number of conversations that were assigned to an AA human supervisor. |
| `aaSupervisorDroppedConversationsCount` | `integer` | The number of conversations that were dropped, i.e. escalated but not assigned to an AA human sup... |
| `aaSupervisorEscalatedConversationsCount` | `integer` | The number of conversations that were escalated to an AA human supervisor for intervention. |
| `aaSupervisorMonitoredConversationsCount` | `integer` | The number of conversations scanned by the AA human supervisor. |
| `aaSupervisorTransferredToHumanAgentConvCount` | `integer` | The number of conversations transferred to a human agent. |
| `aiCoachSuggestionAgentMessageTriggerCount` | `integer` | Count of agent messages that triggered an Ai Coach Suggestion. |
| `aiCoachSuggestionAgentUsageCount` | `integer` | Count of Ai Coach Suggestion that has been used by agents. |
| `aiCoachSuggestionAgentUsageRatio` | `number` | Proportion of Ai Coach Suggestion that has been used by agents. |
| `aiCoachSuggestionCustomerMessageTriggerCount` | `integer` | Count of customer messages that triggered an Ai Coach Suggestion. |
| `aiCoachSuggestionCustomerMessageTriggerRatio` | `number` | Proportion of customer messages that triggered an Ai Coach Suggestion. |
| `aiCoachSuggestionMessageTriggerCount` | `integer` | Count of end_of_utterance trigger event messages that triggered an Ai Coach Suggestion. |
| `aiCoachSuggestionMessageTriggerRatio` | `number` | Proportion of end_of_utterance trigger event messages that triggered an Ai Coach Suggestion. |
| `averageAgentSentimentScore` | `number` | The average agent's sentiment score. |
| `averageClientSentimentScore` | `number` | The average client's sentiment score. |
| `averageCustomerSatisfactionRating` | `number` | The average customer satisfaction rating. |
| `averageDuration` | `string` | The average duration. |
| `averageQaNormalizedScore` | `number` | The average normalized QA score for a scorecard. When computing the average across a set of conve... |
| `averageQaQuestionNormalizedScore` | `number` | Average QA normalized score averaged for questions averaged across all revisions of the parent sc... |
| `averageSilencePercentage` | `number` | The average silence percentage. |
| `averageSummarizationSuggestionEditDistance` | `number` | Average edit distance of the summarization suggestions. Edit distance (also called as levenshtein... |
| `averageSummarizationSuggestionNormalizedEditDistance` | `number` | Normalized Average edit distance of the summarization suggestions. Edit distance (also called as ... |
| `averageTurnCount` | `number` | The average turn count. |
| `avgConversationClientTurnSentimentEma` | `number` | The exponential moving average of the sentiment score of client turns in the conversation. |
| `containedConversationCount` | `integer` | The number of conversations that were contained. |
| `containedConversationRatio` | `number` | The percentage of conversations that were contained. |
| `conversationAiCoachSuggestionCount` | `integer` | Count of conversations that has Ai Coach Suggestions. |
| `conversationAiCoachSuggestionRatio` | `number` | Proportion of conversations that has Ai Coach Suggestions. |
| `conversationCount` | `integer` | The conversation count. |
| `conversationSuggestedSummaryRatio` | `number` | Proportion of conversations that had a suggested summary. |
| `conversationTotalAgentMessageCount` | `integer` | The agent message count. |
| `conversationTotalCustomerMessageCount` | `integer` | The customer message count. |
| `conversationalAgentsAverageAudioInAudioOutLatency` | `number` | The average latency of conversational agents' audio in audio out latency per interaction. This is... |
| `conversationalAgentsAverageEndToEndLatency` | `number` | The average latency of conversational agents' latency per interaction. This is computed as the av... |
| `conversationalAgentsAverageLlmCallLatency` | `number` | The average latency of conversational agents' LLM call latency per interaction. This is computed ... |
| `conversationalAgentsAverageTtsLatency` | `number` | The macro average latency of conversational agents' TTS latency per interaction. This is computed... |
| `dialogflowAverageWebhookLatency` | `number` | Average latency of dialogflow webhook calls. |
| `dialogflowConversationsEscalationCount` | `number` | count of conversations that was handed off from virtual agent to human agent. |
| `dialogflowConversationsEscalationRatio` | `number` | Proportion of conversations that was handed off from virtual agent to human agent. |
| `dialogflowInteractionsNoInputRatio` | `number` | Proportion of dialogflow interactions that has empty input. |
| `dialogflowInteractionsNoMatchRatio` | `number` | Proportion of dialogflow interactions that has no intent match for the input. |
| `dialogflowWebhookFailureRatio` | `number` | Proportion of dialogflow webhook calls that failed. |
| `dialogflowWebhookTimeoutRatio` | `number` | Proportion of dialogflow webhook calls that timed out. |
| `knowledgeAssistNegativeFeedbackRatio` | `number` | Proportion of knowledge assist (Proactive Generative Knowledge Assist) queries that had negative ... |
| `knowledgeAssistPositiveFeedbackRatio` | `number` | Proportion of knowledge assist (Proactive Generative Knowledge Assist) queries that had positive ... |
| `knowledgeAssistResultCount` | `integer` | Count of knowledge assist results (Proactive Generative Knowledge Assist) shown to the user. |
| `knowledgeAssistUriClickRatio` | `number` | Proportion of knowledge assist (Proactive Generative Knowledge Assist) queries that had a URL cli... |
| `knowledgeSearchAgentQuerySourceRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries made by the agent compared t... |
| `knowledgeSearchNegativeFeedbackRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries that had negative feedback. |
| `knowledgeSearchPositiveFeedbackRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries that had positive feedback. |
| `knowledgeSearchResultCount` | `integer` | Count of knowledge search results (Generative Knowledge Assist) shown to the user. |
| `knowledgeSearchSuggestedQuerySourceRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries suggested compared to the to... |
| `knowledgeSearchUriClickRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries that had a URL clicked. |
| `qaTagScores` | `array<GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore>` | Average QA normalized score for all the tags. |
| `summarizationSuggestionEditRatio` | `number` | Proportion of summarization suggestions that were manually edited. |
| `summarizationSuggestionResultCount` | `integer` | Count of summarization suggestions results. |

### `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore`

Average QA normalized score for the tag.

| Property | Type | Description |
|----------|------|-------------|
| `averageTagNormalizedScore` | `number` | Average tag normalized score per tag. |
| `tag` | `string` | Tag name. |

### `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointDialogflowInteractionMeasure`

The measure related to dialogflow interactions.

| Property | Type | Description |
|----------|------|-------------|
| `percentileAudioInAudioOutLatency` | `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for audio in audio out latency in milliseconds per dialogflow interaction l... |
| `percentileEndToEndLatency` | `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for end to end chat latency in milliseconds per dialogflow interaction level. |
| `percentileLlmCallLatency` | `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for LLM latency in milliseconds per dialogflow interaction level. |
| `percentileToolUseLatency` | `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for tool use latency in milliseconds per dialogflow interaction level. |
| `percentileTtsLatency` | `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for TTS latency in milliseconds per dialogflow interaction level. |

### `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPointPercentileResult`

The percentile result. Currently supported percentiles are 50th, 90th, and 99th.

| Property | Type | Description |
|----------|------|-------------|
| `p50` | `number` | The 50th percentile value. |
| `p90` | `number` | The 90th percentile value. |
| `p99` | `number` | The 99th percentile value. |

### `GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceTimeSeries`

A time series of metric values.

| Property | Type | Description |
|----------|------|-------------|
| `dataPoints` | `array<GoogleCloudContactcenterinsightsV1QueryMetricsResponseSliceDataPoint>` | The data points that make up the time series . |

### `GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewMetadata`

The metadata for querying performance overview.

### `GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequest`

The request for summarizing performance according to different metrics for conversations over a specified time window.

| Property | Type | Description |
|----------|------|-------------|
| `agentPerformanceSource` | `GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource` | Conversations are from a single agent. |
| `comparisonQueryInterval` | `GoogleCloudContactcenterinsightsV1QueryInterval` | The time window of the conversations to compare the performance to. |
| `filter` | `string` | Optional. Filter to select a subset of conversations to compute the performance overview. Support... |
| `queryInterval` | `GoogleCloudContactcenterinsightsV1QueryInterval` | Required. The time window of the conversations to derive performance stats from. |

### `GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewRequestAgentSource`

The entity whose performance is being queried is a single agent.

| Property | Type | Description |
|----------|------|-------------|
| `agentId` | `string` | Required. Agent id to query performance overview for. |

### `GoogleCloudContactcenterinsightsV1QueryPerformanceOverviewResponse`

The response for querying performance overview.

| Property | Type | Description |
|----------|------|-------------|
| `summaryText` | `string` | The summary text of the performance. |

### `GoogleCloudContactcenterinsightsV1RedactionConfig`

DLP resources used for redaction while ingesting conversations. DLP settings are applied to conversations ingested from the `UploadConversation` and `IngestConversations` endpoints, including conversation coming from CCAI Platform. They are not applied to conversations ingested from the `CreateConversation` endpoint or the Dialogflow / Agent Assist runtime integrations. When using Dialogflow / Agent Assist runtime integrations, redaction should be performed in Dialogflow / Agent Assist.

| Property | Type | Description |
|----------|------|-------------|
| `deidentifyTemplate` | `string` | The fully-qualified DLP deidentify template resource name. Format: `projects/{project}/deidentify... |
| `inspectTemplate` | `string` | The fully-qualified DLP inspect template resource name. Format: `projects/{project}/locations/{lo... |

### `GoogleCloudContactcenterinsightsV1RegexMatchConfig`

Regex match configuration.

### `GoogleCloudContactcenterinsightsV1RuntimeAnnotation`

An annotation that was generated during the customer and agent interaction.

| Property | Type | Description |
|----------|------|-------------|
| `annotationId` | `string` | The unique identifier of the annotation. Format: projects/{project}/locations/{location}/conversa... |
| `answerFeedback` | `GoogleCloudContactcenterinsightsV1AnswerFeedback` | The feedback that the customer has about the answer in `data`. |
| `articleSuggestion` | `GoogleCloudContactcenterinsightsV1ArticleSuggestionData` | Agent Assist Article Suggestion data. |
| `conversationSummarizationSuggestion` | `GoogleCloudContactcenterinsightsV1ConversationSummarizationSuggestionData` | Conversation summarization suggestion data. |
| `createTime` | `string` | The time at which this annotation was created. |
| `dialogflowInteraction` | `GoogleCloudContactcenterinsightsV1DialogflowInteractionData` | Dialogflow interaction data. |
| `endBoundary` | `GoogleCloudContactcenterinsightsV1AnnotationBoundary` | The boundary in the conversation where the annotation ends, inclusive. |
| `faqAnswer` | `GoogleCloudContactcenterinsightsV1FaqAnswerData` | Agent Assist FAQ answer data. |
| `smartComposeSuggestion` | `GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData` | Agent Assist Smart Compose suggestion data. |
| `smartReply` | `GoogleCloudContactcenterinsightsV1SmartReplyData` | Agent Assist Smart Reply data. |
| `startBoundary` | `GoogleCloudContactcenterinsightsV1AnnotationBoundary` | The boundary in the conversation where the annotation starts, inclusive. |
| `userInput` | `GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput` | Explicit input used for generating the answer |

### `GoogleCloudContactcenterinsightsV1RuntimeAnnotationUserInput`

Explicit input used for generating the answer

| Property | Type | Description |
|----------|------|-------------|
| `generatorName` | `string` | The resource name of associated generator. Format: `projects//locations//generators/` |
| `query` | `string` | Query text. Article Search uses this to store the input query used to generate the search results. |
| `querySource` | `string` | Query source for the answer. |

### `GoogleCloudContactcenterinsightsV1SampleConversationsMetadata`

The metadata for an SampleConversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `partialErrors` | `array<GoogleRpcStatus>` | Output only. Partial errors during sample conversations operation that might cause the operation ... |
| `request` | `GoogleCloudContactcenterinsightsV1SampleConversationsRequest` | Output only. The original request for sample conversations to dataset. |
| `sampleConversationsStats` | `GoogleCloudContactcenterinsightsV1SampleConversationsMetadataSampleConversationsStats` | Output only. Statistics for SampleConversations operation. |

### `GoogleCloudContactcenterinsightsV1SampleConversationsMetadataSampleConversationsStats`

Statistics for SampleConversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `failedSampleCount` | `integer` | Output only. The number of objects which were unable to be sampled due to errors. The errors are ... |
| `successfulSampleCount` | `integer` | Output only. The number of new conversations added during this sample operation. |

### `GoogleCloudContactcenterinsightsV1SampleConversationsRequest`

The request to sample conversations to a dataset.

| Property | Type | Description |
|----------|------|-------------|
| `destinationDataset` | `GoogleCloudContactcenterinsightsV1Dataset` | The dataset resource to copy the sampled conversations to. |
| `parent` | `string` | Required. The parent resource of the dataset. |
| `sampleRule` | `GoogleCloudContactcenterinsightsV1SampleRule` | Optional. The sample rule used for sampling conversations. |

### `GoogleCloudContactcenterinsightsV1SampleConversationsResponse`

The response to an SampleConversations operation.

### `GoogleCloudContactcenterinsightsV1SampleRule`

Message for sampling conversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversationFilter` | `string` | To specify the filter for the conversions that should apply this sample rule. An empty filter mea... |
| `dimension` | `string` | Optional. Group by dimension to sample the conversation. If no dimension is provided, the samplin... |
| `samplePercentage` | `number` | Percentage of conversations that we should sample based on the dimension between [0, 100]. |
| `sampleRow` | `string` | Number of the conversations that we should sample based on the dimension. |

### `GoogleCloudContactcenterinsightsV1ScheduleInfo`

Message for schedule info.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | End time of the schedule. If not specified, will keep scheduling new pipelines for execution util... |
| `schedule` | `string` | The groc expression. Format: `every number [synchronized]` Time units can be: minutes, hours Sync... |
| `startTime` | `string` | Start time of the schedule. If not specified, will start as soon as the schedule is created. |
| `timeZone` | `string` | The timezone to use for the groc expression. If not specified, defaults to UTC. |

### `GoogleCloudContactcenterinsightsV1SearchAuthorizedViewsResponse`

The response from a ListAuthorizedViews request.

| Property | Type | Description |
|----------|------|-------------|
| `authorizedViews` | `array<GoogleCloudContactcenterinsightsV1AuthorizedView>` | The AuthorizedViews under the parent. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContactcenterinsightsV1SentimentData`

The data for a sentiment annotation.

| Property | Type | Description |
|----------|------|-------------|
| `magnitude` | `number` | A non-negative number from 0 to infinity which represents the absolute magnitude of sentiment reg... |
| `score` | `number` | The sentiment score between -1.0 (negative) and 1.0 (positive). |

### `GoogleCloudContactcenterinsightsV1Settings`

The CCAI Insights project wide settings. Use these settings to configure the behavior of Insights. View these settings with [`getsettings`](https://cloud.google.com/contact-center/insights/docs/reference/rest/v1/projects.locations/getSettings) and change the settings with [`updateSettings`](https://cloud.google.com/contact-center/insights/docs/reference/rest/v1/projects.locations/updateSettings).

| Property | Type | Description |
|----------|------|-------------|
| `analysisConfig` | `GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig` | Default analysis settings. |
| `conversationTtl` | `string` | The default TTL for newly-created conversations. If a conversation has a specified expiration, th... |
| `createTime` | `string` | Output only. The time at which the settings was created. |
| `languageCode` | `string` | A language code to be applied to each transcript segment unless the segment already specifies a l... |
| `name` | `string` | Immutable. The resource name of the settings resource. Format: projects/{project}/locations/{loca... |
| `pubsubNotificationSettings` | `object` | A map that maps a notification trigger to a Pub/Sub topic. Each time a specified trigger occurs, ... |
| `redactionConfig` | `GoogleCloudContactcenterinsightsV1RedactionConfig` | Default DLP redaction resources to be applied while ingesting conversations. This applies to conv... |
| `screenRecordingBucketUri` | `string` | Optional. The path to a Cloud Storage bucket containing conversation screen recordings. If provid... |
| `speechConfig` | `GoogleCloudContactcenterinsightsV1SpeechConfig` | Optional. Default Speech-to-Text resources to use while ingesting audio files. Optional, CCAI Ins... |
| `updateTime` | `string` | Output only. The time at which the settings were last updated. |

### `GoogleCloudContactcenterinsightsV1SettingsAnalysisConfig`

Default configuration when creating Analyses in Insights.

| Property | Type | Description |
|----------|------|-------------|
| `annotatorSelector` | `GoogleCloudContactcenterinsightsV1AnnotatorSelector` | To select the annotators to run and the phrase matchers to use (if any). If not specified, all an... |
| `runtimeIntegrationAnalysisPercentage` | `number` | Percentage of conversations created using Dialogflow runtime integration to analyze automatically... |
| `uploadConversationAnalysisPercentage` | `number` | Percentage of conversations created using the UploadConversation endpoint to analyze automaticall... |

### `GoogleCloudContactcenterinsightsV1SignedAudioUris`

Signed audio URIs for a conversation.

| Property | Type | Description |
|----------|------|-------------|
| `signedDialogflowAudioUri` | `string` | The signed URI for the audio from the Dialogflow conversation source. |
| `signedGcsAudioUri` | `string` | The signed URI for the audio from the Cloud Storage conversation source. |
| `signedTurnLevelAudios` | `array<GoogleCloudContactcenterinsightsV1ConversationDataSourceTurnLevelAudio>` | The signed URI for the audio corresponding to each turn in the conversation. |

### `GoogleCloudContactcenterinsightsV1SilenceData`

The data for a silence annotation.

### `GoogleCloudContactcenterinsightsV1SmartComposeSuggestionData`

Agent Assist Smart Compose suggestion data.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceScore` | `number` | The system's confidence score that this suggestion is a good match for this conversation, ranging... |
| `metadata` | `object` | Map that contains metadata about the Smart Compose suggestion and the document from which it orig... |
| `queryRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `suggestion` | `string` | The content of the suggestion. |

### `GoogleCloudContactcenterinsightsV1SmartReplyData`

Agent Assist Smart Reply data.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceScore` | `number` | The system's confidence score that this reply is a good match for this conversation, ranging from... |
| `metadata` | `object` | Map that contains metadata about the Smart Reply and the document from which it originates. |
| `queryRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `reply` | `string` | The content of the reply. |

### `GoogleCloudContactcenterinsightsV1SpeechConfig`

Speech-to-Text configuration. Speech-to-Text settings are applied to conversations ingested from the `UploadConversation` and `IngestConversations` endpoints, including conversation coming from CCAI Platform. They are not applied to conversations ingested from the `CreateConversation` endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `disableWordTimeOffsets` | `boolean` | Whether to disable word time offsets. If true, the `enable_word_time_offsets` field in the recogn... |
| `speechRecognizer` | `string` | The fully-qualified Speech Recognizer resource name. Format: `projects/{project_id}/locations/{lo... |

### `GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleRequest`

The request message for testing auto labeling rules.

| Property | Type | Description |
|----------|------|-------------|
| `autoLabelingRule` | `GoogleCloudContactcenterinsightsV1AutoLabelingRule` | Required. The auto labeling rule to test. |
| `conversation` | `GoogleCloudContactcenterinsightsV1Conversation` | Required. Conversation data to test rules against. |

### `GoogleCloudContactcenterinsightsV1TestAutoLabelingRuleResponse`

The response message for testing auto labeling rules.

| Property | Type | Description |
|----------|------|-------------|
| `labelResult` | `string` | The result of the test auto labeling rule. |

### `GoogleCloudContactcenterinsightsV1TestCorrelationConfigMetadata`

Metadata for testing correlation config.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `dataset` | `string` | The dataset used for sampling conversations. |
| `stats` | `GoogleCloudContactcenterinsightsV1TestCorrelationConfigMetadataFullConversationCorrelationStats` | The statistics for the operation. |

### `GoogleCloudContactcenterinsightsV1TestCorrelationConfigMetadataFullConversationCorrelationStats`

Statistics for TestCorrelationConfig operation.

| Property | Type | Description |
|----------|------|-------------|
| `conversationCorrelationErrors` | `array<GoogleCloudContactcenterinsightsV1TestCorrelationConfigMetadataFullConversationCorrelationStatsConversationCorrelationError>` | A list of errors that occurred during correlation, one for each conversation that failed. |
| `correlatedConversationsCount` | `integer` | The number of conversations correlated. |
| `failedConversationsCount` | `integer` | The number of conversations that failed correlation. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during test correlation config operation that might cause the operation output to ... |
| `sampledConversationsCount` | `integer` | The number of conversations sampled. |

### `GoogleCloudContactcenterinsightsV1TestCorrelationConfigMetadataFullConversationCorrelationStatsConversationCorrelationError`

An error that occurred during correlation for a specific conversation.

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `string` | The conversation resource name that had an error during correlation. |
| `status` | `GoogleRpcStatus` | The error status. |

### `GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequest`

The request to test correlation config.

| Property | Type | Description |
|----------|------|-------------|
| `conversations` | `GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations` | Optional. A list of conversations to test against. |
| `correlationConfig` | `GoogleCloudContactcenterinsightsV1CorrelationConfig` | Required. The correlation config to test. |
| `filter` | `string` | Optional. Filter to select conversations to test correlation against. Conversations matching this... |
| `maxSampleCount` | `integer` | Optional. The maximum number of conversations to sample when using the `filter`. If not set, defa... |

### `GoogleCloudContactcenterinsightsV1TestCorrelationConfigRequestConversations`

Wrapper for a list of conversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversations` | `array<GoogleCloudContactcenterinsightsV1Conversation>` | Optional. The conversations. |

### `GoogleCloudContactcenterinsightsV1TestCorrelationConfigResponse`

The response of testing correlation config.

| Property | Type | Description |
|----------|------|-------------|
| `detailedResults` | `GoogleCloudContactcenterinsightsV1TestCorrelationConfigResponseDetailedCorrelationResults` | Results for the DETAILED_SYNC execution mode. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during test correlation config operation that might cause the operation output to ... |

### `GoogleCloudContactcenterinsightsV1TestCorrelationConfigResponseDetailedCorrelationResults`

Wrapper for detailed, step-by-step results.

| Property | Type | Description |
|----------|------|-------------|
| `constraintResults` | `array<GoogleCloudContactcenterinsightsV1ConstraintEvaluationResult>` | A list of constraint evaluation results for each pair of conversations. |
| `joinKeyResults` | `array<GoogleCloudContactcenterinsightsV1ConversationCorrelationResult>` | A list of join key correlation results for each conversation tested. |

### `GoogleCloudContactcenterinsightsV1TuneQaScorecardRevisionRequest`

Request for TuneQaScorecardRevision endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Required. Filter for selecting the feedback labels that needs to be used for training. This filte... |
| `validateOnly` | `boolean` | Optional. Run in validate only mode, no fine tuning will actually run. Data quality validations l... |

### `GoogleCloudContactcenterinsightsV1UndeployIssueModelMetadata`

Metadata for undeploying an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest` | The original request for undeployment. |

### `GoogleCloudContactcenterinsightsV1UndeployIssueModelRequest`

The request to undeploy an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The issue model to undeploy. |

### `GoogleCloudContactcenterinsightsV1UndeployIssueModelResponse`

The response to undeploy an issue model.

### `GoogleCloudContactcenterinsightsV1UndeployQaScorecardRevisionRequest`

The request to undeploy a QaScorecardRevision

### `GoogleCloudContactcenterinsightsV1UpdateQaQuestionTagMetadata`

The metadata for updating a QaQuestionTag Resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1UpdateQaQuestionTagRequest` | Output only. The original request. |

### `GoogleCloudContactcenterinsightsV1UpdateQaQuestionTagRequest`

The request for updating a QaQuestionTag.

| Property | Type | Description |
|----------|------|-------------|
| `qaQuestionTag` | `GoogleCloudContactcenterinsightsV1QaQuestionTag` | Required. The QaQuestionTag to update. |
| `updateMask` | `string` | Optional. The list of fields to be updated. All possible fields can be updated by passing `*`, or... |

### `GoogleCloudContactcenterinsightsV1UploadConversationMetadata`

The metadata for an `UploadConversation` operation.

| Property | Type | Description |
|----------|------|-------------|
| `analysisOperation` | `string` | Output only. The operation name for a successfully created analysis operation, if any. |
| `appliedRedactionConfig` | `GoogleCloudContactcenterinsightsV1RedactionConfig` | Output only. The redaction config applied to the uploaded conversation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1UploadConversationRequest` | Output only. The original request. |

### `GoogleCloudContactcenterinsightsV1UploadConversationRequest`

Request to upload a conversation.

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `GoogleCloudContactcenterinsightsV1Conversation` | Required. The conversation resource to create. |
| `conversationId` | `string` | Optional. A unique ID for the new conversation. This ID will become the final component of the co... |
| `parent` | `string` | Required. The parent resource of the conversation. |
| `redactionConfig` | `GoogleCloudContactcenterinsightsV1RedactionConfig` | Optional. DLP settings for transcript redaction. Will default to the config specified in Settings. |
| `speechConfig` | `GoogleCloudContactcenterinsightsV1SpeechConfig` | Optional. Speech-to-Text configuration. Will default to the config specified in Settings. |

### `GoogleCloudContactcenterinsightsV1UserInfo`

Information about a user.

| Property | Type | Description |
|----------|------|-------------|
| `username` | `string` | The user's username. |

### `GoogleCloudContactcenterinsightsV1View`

The View resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which this view was created. |
| `displayName` | `string` | The human-readable display name of the view. |
| `name` | `string` | Immutable. The resource name of the view. Format: projects/{project}/locations/{location}/views/{... |
| `updateTime` | `string` | Output only. The most recent time at which the view was updated. |
| `value` | `string` | A filter to reduce conversation results to a specific subset. Refer to https://cloud.google.com/c... |

### `GoogleCloudContactcenterinsightsV1Widget`

Represents a dashboard element, could be a nested Container or Chart.

| Property | Type | Description |
|----------|------|-------------|
| `chart` | `GoogleCloudContactcenterinsightsV1Chart` | A chart widget. |
| `chartReference` | `string` | A reference to a chart widget. Format: projects/{project}/locations/{location}/dashboards/{dashbo... |
| `container` | `GoogleCloudContactcenterinsightsV1Container` | A container widget. |
| `filter` | `string` | Filter applied to all charts in the container. Should support scope later. |

### `GoogleCloudContactcenterinsightsV1alpha1Analysis`

The analysis resource.

| Property | Type | Description |
|----------|------|-------------|
| `analysisResult` | `GoogleCloudContactcenterinsightsV1alpha1AnalysisResult` | Output only. The result of the analysis, which is populated when the analysis finishes. |
| `annotatorSelector` | `GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector` | To select the annotators to run and the phrase matchers to use (if any). If not specified, all an... |
| `createTime` | `string` | Output only. The time at which the analysis was created, which occurs when the long-running opera... |
| `name` | `string` | Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/con... |
| `requestTime` | `string` | Output only. The time at which the analysis was requested. |

### `GoogleCloudContactcenterinsightsV1alpha1AnalysisResult`

The result of an analysis.

| Property | Type | Description |
|----------|------|-------------|
| `callAnalysisMetadata` | `GoogleCloudContactcenterinsightsV1alpha1AnalysisResultCallAnalysisMetadata` | Call-specific metadata created by the analysis. |
| `endTime` | `string` | The time at which the analysis ended. |

### `GoogleCloudContactcenterinsightsV1alpha1AnalysisResultCallAnalysisMetadata`

Call-specific metadata created during analysis.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `array<GoogleCloudContactcenterinsightsV1alpha1CallAnnotation>` | A list of call annotations that apply to this call. |
| `entities` | `object` | All the entities in the call. |
| `intents` | `object` | All the matched intents in the call. |
| `issueModelResult` | `GoogleCloudContactcenterinsightsV1alpha1IssueModelResult` | Overall conversation-level issue modeling result. |
| `phraseMatchers` | `object` | All the matched phrase matchers in the call. |
| `qaScorecardResults` | `array<GoogleCloudContactcenterinsightsV1alpha1QaScorecardResult>` | Results of scoring QaScorecards. |
| `sentiments` | `array<GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSentiment>` | Overall conversation-level sentiment for each channel of the call. |
| `silence` | `GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSilence` | Overall conversation-level silence during the call. |

### `GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary`

A point in a conversation that marks the start or the end of an annotation.

| Property | Type | Description |
|----------|------|-------------|
| `transcriptIndex` | `integer` | The index in the sequence of transcribed pieces of the conversation where the boundary is located... |
| `wordIndex` | `integer` | The word index of this boundary with respect to the first word in the transcript piece. This inde... |

### `GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector`

Selector of all available annotators and phrase matchers to run.

| Property | Type | Description |
|----------|------|-------------|
| `issueModels` | `array<string>` | The issue model to run. If not provided, the most recently deployed topic model will be used. The... |
| `phraseMatchers` | `array<string>` | The list of phrase matchers to run. If not provided, all active phrase matchers will be used. If ... |
| `qaConfig` | `GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfig` | Configuration for the QA annotator. |
| `runEntityAnnotator` | `boolean` | Whether to run the entity annotator. |
| `runIntentAnnotator` | `boolean` | Whether to run the intent annotator. |
| `runInterruptionAnnotator` | `boolean` | Whether to run the interruption annotator. |
| `runIssueModelAnnotator` | `boolean` | Whether to run the issue model annotator. A model should have already been deployed for this to t... |
| `runPhraseMatcherAnnotator` | `boolean` | Whether to run the active phrase matcher annotator(s). |
| `runQaAnnotator` | `boolean` | Whether to run the QA annotator. |
| `runSentimentAnnotator` | `boolean` | Whether to run the sentiment annotator. |
| `runSilenceAnnotator` | `boolean` | Whether to run the silence annotator. |
| `runSummarizationAnnotator` | `boolean` | Whether to run the summarization annotator. |
| `summarizationConfig` | `GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorSummarizationConfig` | Configuration for the summarization annotator. |

### `GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfig`

Configuration for the QA feature.

| Property | Type | Description |
|----------|------|-------------|
| `scorecardList` | `GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfigScorecardList` | A manual list of scorecards to score. |

### `GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorQaConfigScorecardList`

Container for a list of scorecards.

| Property | Type | Description |
|----------|------|-------------|
| `qaScorecardRevisions` | `array<string>` | List of QaScorecardRevisions. |

### `GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelectorSummarizationConfig`

Configuration for summarization.

| Property | Type | Description |
|----------|------|-------------|
| `conversationProfile` | `string` | Resource name of the Dialogflow conversation profile. Format: projects/{project}/locations/{locat... |
| `generator` | `string` | The resource name of the existing created generator. Format: projects//locations//generators/ |
| `summarizationModel` | `string` | Default summarization model to be used. |

### `GoogleCloudContactcenterinsightsV1alpha1AnswerFeedback`

The feedback that the customer has about a certain answer in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `clicked` | `boolean` | Indicates whether an answer or item was clicked by the human agent. |
| `correctnessLevel` | `string` | The correctness level of an answer. |
| `displayed` | `boolean` | Indicates whether an answer or item was displayed to the human agent in the agent desktop UI. |

### `GoogleCloudContactcenterinsightsV1alpha1ArticleSuggestionData`

Agent Assist Article Suggestion data.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceScore` | `number` | The system's confidence score that this article is a good match for this conversation, ranging fr... |
| `metadata` | `object` | Map that contains metadata about the Article Suggestion and the document that it originates from. |
| `queryRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `source` | `string` | The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeB... |
| `title` | `string` | Article title. |
| `uri` | `string` | Article URI. |

### `GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsMetadata`

The metadata for a bulk analyze conversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `completedAnalysesCount` | `integer` | The number of requested analyses that have completed successfully so far. |
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `failedAnalysesCount` | `integer` | The number of requested analyses that have failed so far. |
| `partialErrors` | `array<GoogleRpcStatus>` | Output only. Partial errors during bulk analyze operation that might cause the operation output t... |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsRequest` | The original request for bulk analyze. |
| `totalRequestedAnalysesCount` | `integer` | Total number of analyses requested. Computed by the number of conversations returned by `filter` ... |

### `GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsRequest`

The request to analyze conversations in bulk.

| Property | Type | Description |
|----------|------|-------------|
| `analysisPercentage` | `number` | Required. Percentage of selected conversation to analyze, between [0, 100]. |
| `annotatorSelector` | `GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector` | To select the annotators to run and the phrase matchers to use (if any). If not specified, all an... |
| `filter` | `string` | Required. Filter used to select the subset of conversations to analyze. |
| `parent` | `string` | Required. The parent resource to create analyses in. |

### `GoogleCloudContactcenterinsightsV1alpha1BulkAnalyzeConversationsResponse`

The response for a bulk analyze conversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `failedAnalysisCount` | `integer` | Count of failed analyses. |
| `successfulAnalysisCount` | `integer` | Count of successful analyses. |

### `GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsMetadata`

The metadata for a bulk delete conversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during bulk delete conversations operation that might cause the operation output t... |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsRequest` | The original request for bulk delete. |

### `GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsRequest`

The request to delete conversations in bulk.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Filter used to select the subset of conversations to delete. |
| `force` | `boolean` | If set to true, all of this conversation's analyses will also be deleted. Otherwise, the request ... |
| `maxDeleteCount` | `integer` | Maximum number of conversations to delete. |
| `parent` | `string` | Required. The parent resource to delete conversations from. Format: projects/{project}/locations/... |

### `GoogleCloudContactcenterinsightsV1alpha1BulkDeleteConversationsResponse`

The response for a bulk delete conversations operation.

### `GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsMetadata`

Metadata for the BulkDeleteFeedbackLabels endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during deletion operation that might cause the operation output to be incomplete. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsRequest` | Output only. The original request for delete. |

### `GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsRequest`

Request for the BulkDeleteFeedbackLabels endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Optional. A filter to reduce results to a specific subset. Supports disjunctions (OR) and conjunc... |
| `parent` | `string` | Required. The parent resource for new feedback labels. |

### `GoogleCloudContactcenterinsightsV1alpha1BulkDeleteFeedbackLabelsResponse`

Response for the BulkDeleteFeedbackLabels endpoint.

### `GoogleCloudContactcenterinsightsV1alpha1CallAnnotation`

A piece of metadata that applies to a window of a call.

| Property | Type | Description |
|----------|------|-------------|
| `annotationEndBoundary` | `GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary` | The boundary in the conversation where the annotation ends, inclusive. |
| `annotationStartBoundary` | `GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary` | The boundary in the conversation where the annotation starts, inclusive. |
| `channelTag` | `integer` | The channel of the audio where the annotation occurs. For single-channel audio, this field is not... |
| `entityMentionData` | `GoogleCloudContactcenterinsightsV1alpha1EntityMentionData` | Data specifying an entity mention. |
| `holdData` | `GoogleCloudContactcenterinsightsV1alpha1HoldData` | Data specifying a hold. |
| `intentMatchData` | `GoogleCloudContactcenterinsightsV1alpha1IntentMatchData` | Data specifying an intent match. |
| `interruptionData` | `GoogleCloudContactcenterinsightsV1alpha1InterruptionData` | Data specifying an interruption. |
| `issueMatchData` | `GoogleCloudContactcenterinsightsV1alpha1IssueMatchData` | Data specifying an issue match. |
| `phraseMatchData` | `GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData` | Data specifying a phrase match. |
| `sentimentData` | `GoogleCloudContactcenterinsightsV1alpha1SentimentData` | Data specifying sentiment. |
| `silenceData` | `GoogleCloudContactcenterinsightsV1alpha1SilenceData` | Data specifying silence. |

### `GoogleCloudContactcenterinsightsV1alpha1ConstraintEvaluationResult`

The result of testing a constraint expression on a pair of conversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversationA` | `string` | The first conversation resource name. |
| `conversationB` | `string` | The second conversation resource name. |
| `ruleConstraintResults` | `array<GoogleCloudContactcenterinsightsV1alpha1ConstraintEvaluationResultRuleConstraintResult>` | The results for each applicable constraint rule. |

### `GoogleCloudContactcenterinsightsV1alpha1ConstraintEvaluationResultRuleConstraintResult`

The result of a single constraint rule on the pair of conversations.

| Property | Type | Description |
|----------|------|-------------|
| `constraintMet` | `boolean` | Whether the constraint expression evaluated to true for (A, B) or (B, A). |
| `error` | `GoogleRpcStatus` | The error status if the constraint expression failed to evaluate. |
| `ruleId` | `string` | The rule ID. |

### `GoogleCloudContactcenterinsightsV1alpha1Conversation`

The conversation resource.

| Property | Type | Description |
|----------|------|-------------|
| `agentId` | `string` | An opaque, user-specified string representing the human agent who handled the conversation. |
| `callMetadata` | `GoogleCloudContactcenterinsightsV1alpha1ConversationCallMetadata` | Call-specific metadata. |
| `correlationInfo` | `GoogleCloudContactcenterinsightsV1alpha1ConversationCorrelationInfo` | Output only. Info for correlating across conversations. |
| `createTime` | `string` | Output only. The time at which the conversation was created. |
| `dataSource` | `GoogleCloudContactcenterinsightsV1alpha1ConversationDataSource` | The source of the audio and transcription for the conversation. |
| `dialogflowIntents` | `object` | Output only. All the matched Dialogflow intents in the call. The key corresponds to a Dialogflow ... |
| `duration` | `string` | Output only. The duration of the conversation. |
| `expireTime` | `string` | The time at which this conversation should expire. After this time, the conversation data and any... |
| `labels` | `object` | A map for the user to specify any custom fields. A maximum of 100 labels per conversation is allo... |
| `languageCode` | `string` | A user-specified language code for the conversation. |
| `latestAnalysis` | `GoogleCloudContactcenterinsightsV1alpha1Analysis` | Output only. The conversation's latest analysis, if one exists. |
| `latestSummary` | `GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData` | Output only. Latest summary of the conversation. |
| `medium` | `string` | Immutable. The conversation medium. |
| `metadataJson` | `string` | Input only. JSON metadata encoded as a string. This field is primarily used by Insights integrati... |
| `name` | `string` | Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}... |
| `obfuscatedUserId` | `string` | Obfuscated user ID which the customer sent to us. |
| `qualityMetadata` | `GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata` | Conversation metadata related to quality management. |
| `runtimeAnnotations` | `array<GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotation>` | Output only. The annotations that were generated during the customer and agent interaction. |
| `startTime` | `string` | The time at which the conversation started. |
| `transcript` | `GoogleCloudContactcenterinsightsV1alpha1ConversationTranscript` | Output only. The conversation transcript. |
| `ttl` | `string` | Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the ... |
| `turnCount` | `integer` | Output only. The number of turns in the conversation. |
| `updateTime` | `string` | Output only. The most recent time at which the conversation was updated. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationCallMetadata`

Call-specific metadata.

| Property | Type | Description |
|----------|------|-------------|
| `agentChannel` | `integer` | The audio channel that contains the agent. |
| `customerChannel` | `integer` | The audio channel that contains the customer. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationCorrelationInfo`

Info for correlating across conversations.

| Property | Type | Description |
|----------|------|-------------|
| `correlationTypes` | `array<string>` | Output only. The correlation types of this conversation. A single conversation can have multiple ... |
| `fullConversationCorrelationId` | `string` | Output only. The full conversation correlation id this conversation is a segment of. |
| `mergedFullConversationCorrelationId` | `string` | Output only. The full conversation correlation id this conversation is a merged conversation of. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationCorrelationResult`

The result of testing correlation config on a single conversation.

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `string` | The conversation resource name. |
| `ruleResults` | `array<GoogleCloudContactcenterinsightsV1alpha1ConversationCorrelationResultRuleCorrelationResult>` | The results for each correlation rule. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationCorrelationResultRuleCorrelationResult`

The result of a single correlation rule.

| Property | Type | Description |
|----------|------|-------------|
| `correlationId` | `string` | The correlation ID generated by the join key expression. |
| `error` | `GoogleRpcStatus` | The error status if the join key expression failed to evaluate. |
| `ruleId` | `string` | The rule ID. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationDataSource`

The conversation source, which is a combination of transcript and audio.

| Property | Type | Description |
|----------|------|-------------|
| `dialogflowSource` | `GoogleCloudContactcenterinsightsV1alpha1DialogflowSource` | The source when the conversation comes from Dialogflow. |
| `gcsSource` | `GoogleCloudContactcenterinsightsV1alpha1GcsSource` | A Cloud Storage location specification for the audio and transcript. |
| `metadataUri` | `string` | Cloud Storage URI that points to a file that contains the conversation metadata. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSentiment`

One channel of conversation-level sentiment data.

| Property | Type | Description |
|----------|------|-------------|
| `channelTag` | `integer` | The channel of the audio that the data applies to. |
| `sentimentData` | `GoogleCloudContactcenterinsightsV1alpha1SentimentData` | Data specifying sentiment. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationLevelSilence`

Conversation-level silence data.

| Property | Type | Description |
|----------|------|-------------|
| `silenceDuration` | `string` | Amount of time calculated to be in silence. |
| `silencePercentage` | `number` | Percentage of the total conversation spent in silence. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationParticipant`

The call participant speaking for a given utterance.

| Property | Type | Description |
|----------|------|-------------|
| `dialogflowParticipant` | `string` | Deprecated. Use `dialogflow_participant_name` instead. The name of the Dialogflow participant. Fo... |
| `dialogflowParticipantName` | `string` | The name of the participant provided by Dialogflow. Format: projects/{project}/locations/{locatio... |
| `obfuscatedExternalUserId` | `string` | Obfuscated user ID from Dialogflow. |
| `role` | `string` | The role of the participant. |
| `userId` | `string` | A user-specified ID representing the participant. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadata`

Conversation metadata related to quality management.

| Property | Type | Description |
|----------|------|-------------|
| `agentInfo` | `array<GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadataAgentInfo>` | Information about agents involved in the call. |
| `customerSatisfactionRating` | `integer` | An arbitrary integer value indicating the customer's satisfaction rating. |
| `feedbackLabels` | `array<GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel>` | Input only. The feedback labels associated with the conversation. |
| `menuPath` | `string` | An arbitrary string value specifying the menu path the customer took. |
| `waitDuration` | `string` | The amount of time the customer waited to connect with an agent. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationQualityMetadataAgentInfo`

Information about an agent involved in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `agentId` | `string` | A user-specified string representing the agent. |
| `agentType` | `string` | The agent type, e.g. HUMAN_AGENT. |
| `deploymentDisplayName` | `string` | The agent's deployment display name. Only applicable to automated agents. |
| `deploymentId` | `string` | The agent's deployment ID. Only applicable to automated agents. |
| `displayName` | `string` | The agent's name. |
| `dispositionCode` | `string` | A user-provided string indicating the outcome of the agent's segment of the call. |
| `location` | `string` | The agent's location. |
| `team` | `string` | A user-specified string representing the agent's team. Deprecated in favor of the `teams` field. |
| `teams` | `array<string>` | User-specified strings representing the agent's teams. |
| `versionDisplayName` | `string` | The agent's version display name. Only applicable to automated agents. |
| `versionId` | `string` | The agent's version ID. Only applicable to automated agents. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData`

Conversation summarization suggestion data.

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `confidence` | `number` | The confidence score of the summarization. |
| `conversationModel` | `string` | The name of the model that generates this summary. Format: projects/{project}/locations/{location... |
| `generatorId` | `string` | Agent Assist generator ID. |
| `metadata` | `object` | A map that contains metadata about the summarization and the document from which it originates. |
| `text` | `string` | The summarization content that is concatenated into one string. |
| `textSections` | `object` | The summarization content that is divided into sections. The key is the section's name and the va... |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationTranscript`

A message representing the transcript of a conversation.

| Property | Type | Description |
|----------|------|-------------|
| `transcriptSegments` | `array<GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegment>` | A list of sequential transcript segments that comprise the conversation. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegment`

A segment of a full transcript.

| Property | Type | Description |
|----------|------|-------------|
| `channelTag` | `integer` | For conversations derived from multi-channel audio, this is the channel number corresponding to t... |
| `confidence` | `number` | A confidence estimate between 0.0 and 1.0 of the fidelity of this segment. A default value of 0.0... |
| `dialogflowSegmentMetadata` | `GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata` | CCAI metadata relating to the current transcript segment. |
| `languageCode` | `string` | The language code of this segment as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) lan... |
| `messageTime` | `string` | The time that the message occurred, if provided. |
| `segmentParticipant` | `GoogleCloudContactcenterinsightsV1alpha1ConversationParticipant` | The participant of this segment. |
| `sentiment` | `GoogleCloudContactcenterinsightsV1alpha1SentimentData` | The sentiment for this transcript segment. |
| `text` | `string` | The text of this segment. |
| `words` | `array<GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentWordInfo>` | A list of the word-specific information for each word in the segment. |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata`

Metadata from Dialogflow relating to the current transcript segment.

| Property | Type | Description |
|----------|------|-------------|
| `smartReplyAllowlistCovered` | `boolean` | Whether the transcript segment was covered under the configured smart reply allowlist in Agent As... |

### `GoogleCloudContactcenterinsightsV1alpha1ConversationTranscriptTranscriptSegmentWordInfo`

Word-level info for words in a transcript.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | A confidence estimate between 0.0 and 1.0 of the fidelity of this word. A default value of 0.0 in... |
| `endOffset` | `string` | Time offset of the end of this word relative to the beginning of the total conversation. |
| `startOffset` | `string` | Time offset of the start of this word relative to the beginning of the total conversation. |
| `word` | `string` | The word itself. Includes punctuation marks that surround the word. |

### `GoogleCloudContactcenterinsightsV1alpha1CreateAnalysisOperationMetadata`

Metadata for a create analysis operation.

| Property | Type | Description |
|----------|------|-------------|
| `annotatorSelector` | `GoogleCloudContactcenterinsightsV1alpha1AnnotatorSelector` | Output only. The annotator selector used for the analysis (if any). |
| `conversation` | `string` | Output only. The Conversation that this Analysis Operation belongs to. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |

### `GoogleCloudContactcenterinsightsV1alpha1CreateIssueMetadata`

Metadata for creating an issue.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1CreateIssueRequest` | The original request for creation. |

### `GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelMetadata`

Metadata for creating an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelRequest` | The original request for creation. |

### `GoogleCloudContactcenterinsightsV1alpha1CreateIssueModelRequest`

The request to create an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `issueModel` | `GoogleCloudContactcenterinsightsV1alpha1IssueModel` | Required. The issue model to create. |
| `parent` | `string` | Required. The parent resource of the issue model. |

### `GoogleCloudContactcenterinsightsV1alpha1CreateIssueRequest`

The request to create an issue.

| Property | Type | Description |
|----------|------|-------------|
| `issue` | `GoogleCloudContactcenterinsightsV1alpha1Issue` | Required. The values for the new issue. |
| `parent` | `string` | Required. The parent resource of the issue. |

### `GoogleCloudContactcenterinsightsV1alpha1Dataset`

Dataset resource represents a collection of conversations that may be bounded (Static Dataset, e.g. golden dataset for training), or unbounded (Dynamic Dataset, e.g. live traffic, or agent training traffic)

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Dataset create time. |
| `description` | `string` | Dataset description. |
| `displayName` | `string` | Display name for the dataaset |
| `name` | `string` | Immutable. Identifier. Resource name of the dataset. Format: projects/{project}/locations/{locati... |
| `ttl` | `string` | Optional. Option TTL for the dataset. |
| `type` | `string` | Dataset usage type. |
| `updateTime` | `string` | Output only. Dataset update time. |

### `GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelMetadata`

Metadata for deleting an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelRequest` | The original request for deletion. |

### `GoogleCloudContactcenterinsightsV1alpha1DeleteIssueModelRequest`

The request to delete an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the issue model to delete. |

### `GoogleCloudContactcenterinsightsV1alpha1DeleteQaQuestionTagMetadata`

The metadata for deleting a QaQuestionTag Resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1DeleteQaQuestionTagRequest` | Output only. The original request. |

### `GoogleCloudContactcenterinsightsV1alpha1DeleteQaQuestionTagRequest`

The request for deleting a QaQuestionTag.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the QaQuestionTag to delete. |

### `GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelMetadata`

Metadata for deploying an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelRequest` | The original request for deployment. |

### `GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelRequest`

The request to deploy an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The issue model to deploy. |

### `GoogleCloudContactcenterinsightsV1alpha1DeployIssueModelResponse`

The response to deploy an issue model.

### `GoogleCloudContactcenterinsightsV1alpha1DialogflowIntent`

The data for a Dialogflow intent. Represents a detected intent in the conversation, e.g. MAKES_PROMISE.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the intent. |

### `GoogleCloudContactcenterinsightsV1alpha1DialogflowInteractionData`

Dialogflow interaction data.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The confidence of the match ranging from 0.0 (completely uncertain) to 1.0 (completely certain). |
| `dialogflowIntentId` | `string` | The Dialogflow intent resource path. Format: projects/{project}/agent/{agent}/intents/{intent} |

### `GoogleCloudContactcenterinsightsV1alpha1DialogflowSource`

A Dialogflow source of conversation data.

| Property | Type | Description |
|----------|------|-------------|
| `audioUri` | `string` | Cloud Storage URI that points to a file that contains the conversation audio. |
| `dialogflowConversation` | `string` | Output only. The name of the Dialogflow conversation that this conversation resource is derived f... |

### `GoogleCloudContactcenterinsightsV1alpha1Dimension`

A dimension determines the grouping key for the query. In SQL terms, these would be part of both the "SELECT" and "GROUP BY" clauses.

| Property | Type | Description |
|----------|------|-------------|
| `agentDimensionMetadata` | `GoogleCloudContactcenterinsightsV1alpha1DimensionAgentDimensionMetadata` | Output only. Metadata about the agent dimension. |
| `clientSentimentCategoryDimensionMetadata` | `GoogleCloudContactcenterinsightsV1alpha1DimensionClientSentimentCategoryDimensionMetadata` | Output only. Metadata about the client sentiment category dimension. |
| `conversationProfileDimensionMetadata` | `GoogleCloudContactcenterinsightsV1alpha1DimensionConversationProfileDimensionMetadata` | Output only. Metadata about the conversation profile dimension. |
| `conversationalAgentsPlaybookDimensionMetadata` | `GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsPlaybookDimensionMetadata` | Output only. Metadata about the Conversational Agents playbook dimension. |
| `conversationalAgentsToolDimensionMetadata` | `GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsToolDimensionMetadata` | Output only. Metadata about the Conversational Agents tool dimension. |
| `dimensionKey` | `string` | The key of the dimension. |
| `issueDimensionMetadata` | `GoogleCloudContactcenterinsightsV1alpha1DimensionIssueDimensionMetadata` | Output only. Metadata about the issue dimension. |
| `labelDimensionMetadata` | `GoogleCloudContactcenterinsightsV1alpha1DimensionLabelDimensionMetadata` | Output only. Metadata about conversation labels. |
| `mediumDimensionMetadata` | `GoogleCloudContactcenterinsightsV1alpha1DimensionMediumDimensionMetadata` | Output only. Metadata about the conversation medium dimension. |
| `qaQuestionAnswerDimensionMetadata` | `GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionAnswerDimensionMetadata` | Output only. Metadata about the QA question-answer dimension. |
| `qaQuestionDimensionMetadata` | `GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionDimensionMetadata` | Output only. Metadata about the QA question dimension. |
| `qaScorecardDimensionMetadata` | `GoogleCloudContactcenterinsightsV1alpha1DimensionQaScorecardDimensionMetadata` | Output only. Metadata about the QA scorecard dimension. |

### `GoogleCloudContactcenterinsightsV1alpha1DimensionAgentDimensionMetadata`

Metadata about the agent dimension.

| Property | Type | Description |
|----------|------|-------------|
| `agentDeploymentDisplayName` | `string` | Optional. The agent's deployment display name. Only applicable to automated agents. This will be ... |
| `agentDeploymentId` | `string` | Optional. The agent's deployment ID. Only applicable to automated agents. This will be populated ... |
| `agentDisplayName` | `string` | Optional. The agent's name This will be populated for AGENT, AGENT_TEAM, AGENT_VERSION_ID, and AG... |
| `agentId` | `string` | Optional. A user-specified string representing the agent. This will be populated for AGENT, AGENT... |
| `agentTeam` | `string` | Optional. A user-specified string representing the agent's team. |
| `agentVersionDisplayName` | `string` | Optional. The agent's version display name. Only applicable to automated agents. This will be pop... |
| `agentVersionId` | `string` | Optional. The agent's version ID. Only applicable to automated agents. This will be populated for... |

### `GoogleCloudContactcenterinsightsV1alpha1DimensionClientSentimentCategoryDimensionMetadata`

Metadata about the client sentiment category dimension.

| Property | Type | Description |
|----------|------|-------------|
| `sentimentCategory` | `string` | Optional. The client sentiment category. |

### `GoogleCloudContactcenterinsightsV1alpha1DimensionConversationProfileDimensionMetadata`

Metadata about the conversation profile dimension.

| Property | Type | Description |
|----------|------|-------------|
| `conversationProfileId` | `string` | Optional. The conversation profile ID. |

### `GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsPlaybookDimensionMetadata`

Metadata about the Conversational Agents playbook dimension.

| Property | Type | Description |
|----------|------|-------------|
| `playbookDisplayName` | `string` | Optional. The dialogflow playbook display name. |
| `playbookId` | `string` | Optional. The dialogflow playbook ID. |

### `GoogleCloudContactcenterinsightsV1alpha1DimensionConversationalAgentsToolDimensionMetadata`

Metadata about the Conversational Agents tool dimension.

| Property | Type | Description |
|----------|------|-------------|
| `toolDisplayName` | `string` | Optional. The dialogflow tool display name. |
| `toolId` | `string` | Optional. The dialogflow tool ID. |

### `GoogleCloudContactcenterinsightsV1alpha1DimensionIssueDimensionMetadata`

Metadata about the issue dimension.

| Property | Type | Description |
|----------|------|-------------|
| `issueDisplayName` | `string` | The issue display name. |
| `issueId` | `string` | The issue ID. |
| `issueModelId` | `string` | The parent issue model ID. |

### `GoogleCloudContactcenterinsightsV1alpha1DimensionLabelDimensionMetadata`

Metadata about conversation labels.

| Property | Type | Description |
|----------|------|-------------|
| `labelKey` | `string` | Optional. The label key. |
| `labelValue` | `string` | Optional. The label value. |

### `GoogleCloudContactcenterinsightsV1alpha1DimensionMediumDimensionMetadata`

Metadata about the conversation medium dimension.

| Property | Type | Description |
|----------|------|-------------|
| `medium` | `string` | Optional. The conversation medium. Currently supports : PHONE_CALL, CHAT. |

### `GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionAnswerDimensionMetadata`

Metadata about the QA question-answer dimension. This is useful for showing the answer distribution for questions for a given scorecard.

| Property | Type | Description |
|----------|------|-------------|
| `answerValue` | `string` | Optional. The full body of the question. |
| `qaQuestionId` | `string` | Optional. The QA question ID. |
| `qaScorecardId` | `string` | Optional. The QA scorecard ID. |
| `questionBody` | `string` | Optional. The full body of the question. |

### `GoogleCloudContactcenterinsightsV1alpha1DimensionQaQuestionDimensionMetadata`

Metadata about the QA question dimension.

| Property | Type | Description |
|----------|------|-------------|
| `qaQuestionId` | `string` | Optional. The QA question ID. |
| `qaScorecardId` | `string` | Optional. The QA scorecard ID. |
| `questionBody` | `string` | Optional. The full body of the question. |

### `GoogleCloudContactcenterinsightsV1alpha1DimensionQaScorecardDimensionMetadata`

Metadata about the QA scorecard dimension.

| Property | Type | Description |
|----------|------|-------------|
| `qaScorecardId` | `string` | Optional. The QA scorecard ID. |

### `GoogleCloudContactcenterinsightsV1alpha1EncryptionSpec`

A customer-managed encryption key specification that can be applied to all created resources (e.g. `Conversation`).

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Required. The name of customer-managed encryption key that is used to secure a resource and its s... |
| `name` | `string` | Immutable. The resource name of the encryption key specification resource. Format: projects/{proj... |

### `GoogleCloudContactcenterinsightsV1alpha1Entity`

The data for an entity annotation. Represents a phrase in the conversation that is a known entity, such as a person, an organization, or location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The representative name for the entity. |
| `metadata` | `object` | Metadata associated with the entity. For most entity types, the metadata is a Wikipedia URL (`wik... |
| `salience` | `number` | The salience score associated with the entity in the [0, 1.0] range. The salience score for an en... |
| `sentiment` | `GoogleCloudContactcenterinsightsV1alpha1SentimentData` | The aggregate sentiment expressed for this entity in the conversation. |
| `type` | `string` | The entity type. |

### `GoogleCloudContactcenterinsightsV1alpha1EntityMentionData`

The data for an entity mention annotation. This represents a mention of an `Entity` in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `entityUniqueId` | `string` | The key of this entity in conversation entities. Can be used to retrieve the exact `Entity` this ... |
| `sentiment` | `GoogleCloudContactcenterinsightsV1alpha1SentimentData` | Sentiment expressed for this mention of the entity. |
| `type` | `string` | The type of the entity mention. |

### `GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataMetadata`

Metadata for an export insights operation.

| Property | Type | Description |
|----------|------|-------------|
| `completedExportCount` | `integer` | The number of conversations that were exported successfully. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `failedExportCount` | `integer` | The number of conversations that failed to be exported. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during export operation that might cause the operation output to be incomplete. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest` | The original request for export. |

### `GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequest`

The request to export insights.

| Property | Type | Description |
|----------|------|-------------|
| `bigQueryDestination` | `GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination` | Specified if sink is a BigQuery table. |
| `exportSchemaVersion` | `string` | Optional. Version of the export schema. |
| `filter` | `string` | A filter to reduce results to a specific subset. Useful for exporting conversations with specific... |
| `kmsKey` | `string` | A fully qualified KMS key name for BigQuery tables protected by CMEK. Format: projects/{project}/... |
| `parent` | `string` | Required. The parent resource to export data from. |
| `writeDisposition` | `string` | Options for what to do if the destination table already exists. |

### `GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataRequestBigQueryDestination`

A BigQuery Table Reference.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Required. The name of the BigQuery dataset that the snapshot result should be exported to. If thi... |
| `projectId` | `string` | A project ID or number. If specified, then export will attempt to write data to this project inst... |
| `table` | `string` | The BigQuery table name to which the insights data should be written. If this table does not exis... |

### `GoogleCloudContactcenterinsightsV1alpha1ExportInsightsDataResponse`

Response for an export insights operation.

### `GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelMetadata`

Metadata used for export issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequest` | The original export request. |

### `GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequest`

Request to export an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequestGcsDestination` | Google Cloud Storage URI to export the issue model to. |
| `name` | `string` | Required. The issue model to export. |

### `GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelRequestGcsDestination`

Google Cloud Storage Object URI to save the issue model to.

| Property | Type | Description |
|----------|------|-------------|
| `objectUri` | `string` | Required. Format: `gs:///` |

### `GoogleCloudContactcenterinsightsV1alpha1ExportIssueModelResponse`

Response from export issue model

### `GoogleCloudContactcenterinsightsV1alpha1FaqAnswerData`

Agent Assist frequently-asked-question answer data.

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` | The piece of text from the `source` knowledge base document. |
| `confidenceScore` | `number` | The system's confidence score that this answer is a good match for this conversation, ranging fro... |
| `metadata` | `object` | Map that contains metadata about the FAQ answer and the document that it originates from. |
| `queryRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `question` | `string` | The corresponding FAQ question. |
| `source` | `string` | The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeB... |

### `GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel`

Represents a conversation, resource, and label provided by the user. Can take the form of a string label or a QaAnswer label. QaAnswer labels are used for Quality AI example conversations. String labels are used for Topic Modeling. AgentAssistSummary labels are used for Agent Assist Summarization.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time of the label. |
| `label` | `string` | String label used for Topic Modeling. |
| `labeledResource` | `string` | Name of the resource to be labeled. Supported resources are: * `projects/{project}/locations/{loc... |
| `name` | `string` | Immutable. Resource name of the FeedbackLabel. Format: projects/{project}/locations/{location}/co... |
| `qaAnswerLabel` | `GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue` | QaAnswer label used for Quality AI example conversations. |
| `updateTime` | `string` | Output only. Update time of the label. |

### `GoogleCloudContactcenterinsightsV1alpha1GcsSource`

A Cloud Storage source of conversation data.

| Property | Type | Description |
|----------|------|-------------|
| `audioUri` | `string` | Cloud Storage URI that points to a file that contains the conversation audio. |
| `transcriptUri` | `string` | Immutable. Cloud Storage URI that points to a file that contains the conversation transcript. |

### `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightConversationTranscript`

The conversation transcript for the chart.

| Property | Type | Description |
|----------|------|-------------|
| `conversationId` | `string` | The conversation id of the chart. |
| `createTime` | `string` | Output only. The create time of the conversation. |
| `messages` | `array<GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightConversationTranscriptMessage>` | Ordered list of messages, including user inputs and system responses. |
| `updateTime` | `string` | Output only. The update time of the conversation. |

### `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightConversationTranscriptMessage`

The message in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. For user messages, this is the time at which the system received the message. For sy... |
| `messageId` | `string` | The message id of the message. |
| `systemMessageWrapper` | `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightConversationTranscriptMessageSystemMessages` | A wrapper for system messages per turn. |
| `userMessage` | `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightConversationTranscriptMessageUserMessage` | A message from the user that is interacting with the system. |

### `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightConversationTranscriptMessageSystemMessage`

A message from the system in response to the user. This message can also be a message from the user as historical context for multiturn conversations with the system.

| Property | Type | Description |
|----------|------|-------------|
| `chartSpec` | `object` | Chart spec from LLM |
| `generatedSqlQuery` | `string` | Raw SQL from LLM, before templatization |
| `textMessage` | `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightConversationTranscriptMessageSystemMessageTextOutput` | A direct natural language response to the user message. |
| `userProvidedChartSpec` | `object` | Optional. User provided chart spec |
| `userProvidedSqlQuery` | `string` | Optional. User provided SQL query |

### `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightConversationTranscriptMessageSystemMessageTextOutput`

A text output message from the system.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `array<string>` | The parts of the message. |
| `textType` | `string` | The type of the text message. |

### `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightConversationTranscriptMessageSystemMessages`

A wrapper for system messages per turn.

| Property | Type | Description |
|----------|------|-------------|
| `systemMessages` | `array<GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightConversationTranscriptMessageSystemMessage>` | A message from the system in response to the user. |

### `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightConversationTranscriptMessageUserMessage`

The user message.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | A message from the user that is interacting with the system. |

### `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightsMetadata`

The metadata for generative insights.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessages` | `array<GoogleRpcStatus>` | The error message when the generative insights request fails. |

### `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightsResponse`

The response for generative insights.

| Property | Type | Description |
|----------|------|-------------|
| `generativeResponses` | `array<GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightsResponseGenerativeResponse>` | The full list of generative responses. Each response is ordered by time. |
| `transcript` | `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightConversationTranscript` | The transcript of the generative insights conversation. |

### `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightsResponseGenerativeResponse`

Wrapper for storing the generative response for a chart.

| Property | Type | Description |
|----------|------|-------------|
| `chartSpec` | `object` | The chart spec for the data. This will be specified in the vega-lite or vega format. |
| `generatedSqlQuery` | `string` | The generated SQL query from the LLM. Will be populated during the chart building phase. The gene... |
| `textMessage` | `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightsResponseGenerativeResponseTextOutput` | The text output from the LLM. Will be populated during the chart building phase. For a reloaded c... |
| `textOutput` | `string` | The text output from the LLM. Will be populated during the chart building phase. For a reloaded c... |

### `GoogleCloudContactcenterinsightsV1alpha1GenerativeInsightsResponseGenerativeResponseTextOutput`

Wrapper for text output.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `array<string>` | The text output from the LLM. |
| `textType` | `string` | The type of text output. |

### `GoogleCloudContactcenterinsightsV1alpha1HoldData`

The data for a hold annotation.

### `GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelMetadata`

Metadata used for import issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequest` | The original import request. |

### `GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequest`

Request to import an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createNewModel` | `boolean` | Optional. If set to true, will create an issue model from the imported file with randomly generat... |
| `gcsSource` | `GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequestGcsSource` | Google Cloud Storage source message. |
| `parent` | `string` | Required. The parent resource of the issue model. |

### `GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelRequestGcsSource`

Google Cloud Storage Object URI to get the issue model file from.

| Property | Type | Description |
|----------|------|-------------|
| `objectUri` | `string` | Required. Format: `gs:///` |

### `GoogleCloudContactcenterinsightsV1alpha1ImportIssueModelResponse`

Response from import issue model

| Property | Type | Description |
|----------|------|-------------|
| `issueModel` | `GoogleCloudContactcenterinsightsV1alpha1IssueModel` | The issue model that was imported. |

### `GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadata`

The metadata for an IngestConversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `ingestConversationsStats` | `GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadataIngestConversationsStats` | Output only. Statistics for IngestConversations operation. |
| `partialErrors` | `array<GoogleRpcStatus>` | Output only. Partial errors during ingest operation that might cause the operation output to be i... |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequest` | Output only. The original request for ingest. |
| `sampledConversations` | `array<string>` | Output only. Stores the conversation resources produced by ingest sampling operations. |

### `GoogleCloudContactcenterinsightsV1alpha1IngestConversationsMetadataIngestConversationsStats`

Statistics for IngestConversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `duplicatesSkippedCount` | `integer` | Output only. The number of objects skipped because another conversation with the same transcript ... |
| `failedIngestCount` | `integer` | Output only. The number of objects which were unable to be ingested due to errors. The errors are... |
| `processedObjectCount` | `integer` | Output only. The number of objects processed during the ingest operation. |
| `successfulIngestCount` | `integer` | Output only. The number of new conversations added during this ingest operation. |

### `GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequest`

The request to ingest conversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversationConfig` | `GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig` | Configuration that applies to all conversations. |
| `gcsSource` | `GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource` | A cloud storage bucket source. Note that any previously ingested objects from the source will be ... |
| `parent` | `string` | Required. The parent resource for new conversations. |
| `redactionConfig` | `GoogleCloudContactcenterinsightsV1alpha1RedactionConfig` | Optional. DLP settings for transcript redaction. Optional, will default to the config specified i... |
| `sampleSize` | `integer` | Optional. If set, this fields indicates the number of objects to ingest from the Cloud Storage bu... |
| `speechConfig` | `GoogleCloudContactcenterinsightsV1alpha1SpeechConfig` | Optional. Default Speech-to-Text configuration. Optional, will default to the config specified in... |
| `transcriptObjectConfig` | `GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig` | Configuration for when `source` contains conversation transcripts. |

### `GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestConversationConfig`

Configuration that applies to all conversations.

| Property | Type | Description |
|----------|------|-------------|
| `agentChannel` | `integer` | Optional. Indicates which of the channels, 1 or 2, contains the agent. Note that this must be set... |
| `agentId` | `string` | Optional. An opaque, user-specified string representing a human agent who handled all conversatio... |
| `customerChannel` | `integer` | Optional. Indicates which of the channels, 1 or 2, contains the agent. Note that this must be set... |

### `GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestGcsSource`

Configuration for Cloud Storage bucket sources.

| Property | Type | Description |
|----------|------|-------------|
| `audioBucketUri` | `string` | Optional. The Cloud Storage path to the conversation audio file. Note that: [1] Audio files will ... |
| `bucketObjectType` | `string` | Optional. Specifies the type of the objects in `bucket_uri`. Avoid passing this. This is inferred... |
| `bucketUri` | `string` | Optional. The Cloud Storage bucket containing source objects. Avoid passing this. Pass this throu... |
| `customMetadataKeys` | `array<string>` | Optional. Custom keys to extract as conversation labels from metadata files in `metadata_bucket_u... |
| `metadataBucketUri` | `string` | Optional. The Cloud Storage path to the conversation metadata. Note that: [1] Metadata files are ... |
| `transcriptBucketUri` | `string` | Optional. The Cloud Storage path to the conversation transcripts. Note that: [1] Transcript files... |

### `GoogleCloudContactcenterinsightsV1alpha1IngestConversationsRequestTranscriptObjectConfig`

Configuration for processing transcript objects.

| Property | Type | Description |
|----------|------|-------------|
| `medium` | `string` | Required. The medium transcript objects represent. |

### `GoogleCloudContactcenterinsightsV1alpha1IngestConversationsResponse`

The response to an IngestConversations operation.

### `GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecMetadata`

Metadata for initializing a location-level encryption specification.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during initializing operation that might cause the operation output to be incomplete. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecRequest` | Output only. The original request for initialization. |

### `GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecRequest`

The request to initialize a location-level encryption specification.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionSpec` | `GoogleCloudContactcenterinsightsV1alpha1EncryptionSpec` | Required. The encryption spec used for CMEK encryption. It is required that the kms key is in the... |

### `GoogleCloudContactcenterinsightsV1alpha1InitializeEncryptionSpecResponse`

The response to initialize a location-level encryption specification.

### `GoogleCloudContactcenterinsightsV1alpha1Intent`

The data for an intent. Represents a detected intent in the conversation, for example MAKES_PROMISE.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the intent. |
| `id` | `string` | The unique identifier of the intent. |

### `GoogleCloudContactcenterinsightsV1alpha1IntentMatchData`

The data for an intent match. Represents an intent match for a text segment in the conversation. A text segment can be part of a sentence, a complete sentence, or an utterance with multiple sentences.

| Property | Type | Description |
|----------|------|-------------|
| `intentUniqueId` | `string` | The id of the matched intent. Can be used to retrieve the corresponding intent information. |

### `GoogleCloudContactcenterinsightsV1alpha1InterruptionData`

The data for an interruption annotation.

### `GoogleCloudContactcenterinsightsV1alpha1Issue`

The issue resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which this issue was created. |
| `displayDescription` | `string` | Representative description of the issue. |
| `displayName` | `string` | The representative name for the issue. |
| `name` | `string` | Immutable. The resource name of the issue. Format: projects/{project}/locations/{location}/issueM... |
| `sampleUtterances` | `array<string>` | Output only. Resource names of the sample representative utterances that match to this issue. |
| `updateTime` | `string` | Output only. The most recent time that this issue was updated. |

### `GoogleCloudContactcenterinsightsV1alpha1IssueAssignment`

Information about the issue.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Immutable. Display name of the assigned issue. This field is set at time of analysis and immutabl... |
| `issue` | `string` | Resource name of the assigned issue. |
| `score` | `number` | Score indicating the likelihood of the issue assignment. currently bounded on [0,1]. |

### `GoogleCloudContactcenterinsightsV1alpha1IssueMatchData`

The data for an issue match annotation.

| Property | Type | Description |
|----------|------|-------------|
| `issueAssignment` | `GoogleCloudContactcenterinsightsV1alpha1IssueAssignment` | Information about the issue's assignment. |

### `GoogleCloudContactcenterinsightsV1alpha1IssueModel`

The issue model resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which this issue model was created. |
| `displayName` | `string` | The representative name for the issue model. |
| `inputDataConfig` | `GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig` | Configs for the input data that used to create the issue model. |
| `issueCount` | `string` | Output only. Number of issues in this issue model. |
| `languageCode` | `string` | Language of the model. |
| `modelType` | `string` | Type of the model. |
| `name` | `string` | Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/... |
| `state` | `string` | Output only. State of the model. |
| `trainingStats` | `GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStats` | Output only. Immutable. The issue model's label statistics on its training data. |
| `updateTime` | `string` | Output only. The most recent time at which the issue model was updated. |

### `GoogleCloudContactcenterinsightsV1alpha1IssueModelInputDataConfig`

Configs for the input data used to create the issue model.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | A filter to reduce the conversations used for training the model to a specific subset. Refer to h... |
| `medium` | `string` | Medium of conversations used in training data. This field is being deprecated. To specify the med... |
| `trainingConversationsCount` | `string` | Output only. Number of conversations used in training. Output only. |

### `GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStats`

Aggregated statistics about an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `analyzedConversationsCount` | `string` | Number of conversations the issue model has analyzed at this point in time. |
| `issueStats` | `object` | Statistics on each issue. Key is the issue's resource name. |
| `unclassifiedConversationsCount` | `string` | Number of analyzed conversations for which no issue was applicable at this point in time. |

### `GoogleCloudContactcenterinsightsV1alpha1IssueModelLabelStatsIssueStats`

Aggregated statistics about an issue.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Display name of the issue. |
| `issue` | `string` | Issue resource. Format: projects/{project}/locations/{location}/issueModels/{issue_model}/issues/... |
| `labeledConversationsCount` | `string` | Number of conversations attached to the issue at this point in time. |

### `GoogleCloudContactcenterinsightsV1alpha1IssueModelResult`

Issue Modeling result on a conversation.

| Property | Type | Description |
|----------|------|-------------|
| `issueModel` | `string` | Issue model that generates the result. Format: projects/{project}/locations/{location}/issueModel... |
| `issues` | `array<GoogleCloudContactcenterinsightsV1alpha1IssueAssignment>` | All the matched issues. |

### `GoogleCloudContactcenterinsightsV1alpha1ListAllFeedbackLabelsResponse`

The response for listing all feedback labels.

| Property | Type | Description |
|----------|------|-------------|
| `feedbackLabels` | `array<GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel>` | The feedback labels that match the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContactcenterinsightsV1alpha1ListFeedbackLabelsResponse`

The response for listing feedback labels.

| Property | Type | Description |
|----------|------|-------------|
| `feedbackLabels` | `array<GoogleCloudContactcenterinsightsV1alpha1FeedbackLabel>` | The feedback labels that match the request. |
| `nextPageToken` | `string` | The next page token. |

### `GoogleCloudContactcenterinsightsV1alpha1PhraseMatchData`

The data for a matched phrase matcher. Represents information identifying a phrase matcher for a given match.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the phrase matcher. |
| `phraseMatcher` | `string` | The unique identifier (the resource name) of the phrase matcher. |

### `GoogleCloudContactcenterinsightsV1alpha1QaAnswer`

An answer to a QaQuestion.

| Property | Type | Description |
|----------|------|-------------|
| `answerSources` | `array<GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerSource>` | Lists all answer sources containing one or more answer values of a specific source type, e.g., al... |
| `answerValue` | `GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue` | The answer value from this source. This field is populated by default, unless the question has a ... |
| `conversation` | `string` | The conversation the answer applies to. |
| `qaQuestion` | `string` | The QaQuestion answered by this answer. |
| `questionBody` | `string` | Question text. E.g., "Did the agent greet the customer?" |
| `tags` | `array<string>` | User-defined list of arbitrary tags. Matches the value from QaScorecard.ScorecardQuestion.tags. U... |

### `GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerSource`

A question may have multiple answers from varying sources, one of which becomes the "main" answer above. AnswerSource represents each individual answer.

| Property | Type | Description |
|----------|------|-------------|
| `answerValue` | `GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue` | The answer value from this source. This field is populated by default, unless the question has a ... |
| `sourceType` | `string` | What created the answer. |

### `GoogleCloudContactcenterinsightsV1alpha1QaAnswerAnswerValue`

Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines the possible answer values for a question.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Boolean value. |
| `key` | `string` | A short string used as an identifier. Matches the value used in QaQuestion.AnswerChoice.key. |
| `naValue` | `boolean` | A value of "Not Applicable (N/A)". Should only ever be `true`. |
| `normalizedScore` | `number` | Output only. Normalized score of the questions. Calculated as score / potential_score. |
| `numValue` | `number` | Numerical value. |
| `potentialScore` | `number` | Output only. The maximum potential score of the question. |
| `score` | `number` | Output only. Numerical score of the answer. |
| `skipValue` | `boolean` | Output only. A value of "Skip". If provided, this field may only be set to `true`. If a question ... |
| `strValue` | `string` | String value. |

### `GoogleCloudContactcenterinsightsV1alpha1QaQuestionTag`

A tag is a resource which aims to categorize a set of questions across multiple scorecards, e.g., "Customer Satisfaction","Billing", etc.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the question tag was created. |
| `displayName` | `string` | Required. A user-specified display name for the tag. |
| `name` | `string` | Identifier. Resource name for the QaQuestionTag Format projects/{project}/locations/{location}/qa... |
| `qaQuestionIds` | `array<string>` | Optional. The list of Scorecard Question IDs that the tag applies to. Each QaQuestionId is repres... |
| `updateTime` | `string` | Output only. The most recent time at which the question tag was updated. |

### `GoogleCloudContactcenterinsightsV1alpha1QaScorecardResult`

The results of scoring a single conversation against a QaScorecard. Contains a collection of QaAnswers and aggregate score.

| Property | Type | Description |
|----------|------|-------------|
| `agentId` | `string` | ID of the agent that handled the conversation. |
| `conversation` | `string` | The conversation scored by this result. |
| `createTime` | `string` | Output only. The timestamp that the revision was created. |
| `name` | `string` | Identifier. The name of the scorecard result. Format: projects/{project}/locations/{location}/qaS... |
| `normalizedScore` | `number` | The normalized score, which is the score divided by the potential score. Any manual edits are inc... |
| `potentialScore` | `number` | The maximum potential overall score of the scorecard. Any questions answered using `na_value` are... |
| `qaAnswers` | `array<GoogleCloudContactcenterinsightsV1alpha1QaAnswer>` | Set of QaAnswers represented in the result. |
| `qaScorecardRevision` | `string` | The QaScorecardRevision scored by this result. |
| `qaTagResults` | `array<GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultQaTagResult>` | Collection of tags and their scores. |
| `score` | `number` | The overall numerical score of the result, incorporating any manual edits if they exist. |
| `scoreSources` | `array<GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultScoreSource>` | List of all individual score sets. |

### `GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultQaTagResult`

Tags and their corresponding results.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedScore` | `number` | The normalized score the tag applies to. |
| `potentialScore` | `number` | The potential score the tag applies to. |
| `score` | `number` | The score the tag applies to. |
| `tag` | `string` | The tag the score applies to. |

### `GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultScoreSource`

A scorecard result may have multiple sets of scores from varying sources, one of which becomes the "main" answer above. A ScoreSource represents each individual set of scores.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedScore` | `number` | The normalized score, which is the score divided by the potential score. |
| `potentialScore` | `number` | The maximum potential overall score of the scorecard. Any questions answered using `na_value` are... |
| `qaTagResults` | `array<GoogleCloudContactcenterinsightsV1alpha1QaScorecardResultQaTagResult>` | Collection of tags and their scores. |
| `score` | `number` | The overall numerical score of the result. |
| `sourceType` | `string` | What created the score. |

### `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsMetadata`

The metadata from querying metrics.

| Property | Type | Description |
|----------|------|-------------|
| `resultIsTruncated` | `boolean` | Whether the result rows were truncated because the result row size is too large to materialize. |

### `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponse`

The response for querying metrics.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Required. The location of the data. "projects/{project}/locations/{location}" |
| `macroAverageSlice` | `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSlice` | The macro average slice contains aggregated averages across all selected dimensions. i.e. if grou... |
| `slices` | `array<GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSlice>` | A slice contains a total and (if the request specified a time granularity) a time series of metri... |
| `updateTime` | `string` | The metrics last update time. |

### `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSlice`

A slice contains a total and (if the request specified a time granularity) a time series of metric values. Each slice contains a unique combination of the cardinality of dimensions from the request. For example, if the request specifies a single ISSUE dimension and it has a cardinality of 2 (i.e. the data used to compute the metrics has 2 issues in total), the response will have 2 slices: * Slice 1 -> dimensions=[Issue 1] * Slice 2 -> dimensions=[Issue 2]

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<GoogleCloudContactcenterinsightsV1alpha1Dimension>` | A unique combination of dimensions that this slice represents. |
| `timeSeries` | `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceTimeSeries` | A time series of metric values. This is only populated if the request specifies a time granularit... |
| `total` | `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPoint` | The total metric value. The interval of this data point is [starting create time, ending create t... |

### `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPoint`

A data point contains the metric values mapped to an interval.

| Property | Type | Description |
|----------|------|-------------|
| `conversationMeasure` | `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasure` | The measure related to conversations. |
| `dialogflowInteractionMeasure` | `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointDialogflowInteractionMeasure` | The measure related to dialogflow interactions. |
| `interval` | `GoogleTypeInterval` | The interval that this data point represents. * If this is the total data point, the interval is ... |

### `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasure`

The measure related to conversations.

| Property | Type | Description |
|----------|------|-------------|
| `aaSupervisorAssignedConversationsCount` | `integer` | The number of conversations that were assigned to an AA human supervisor. |
| `aaSupervisorDroppedConversationsCount` | `integer` | The number of conversations that were dropped, i.e. escalated but not assigned to an AA human sup... |
| `aaSupervisorEscalatedConversationsCount` | `integer` | The number of conversations that were escalated to an AA human supervisor for intervention. |
| `aaSupervisorMonitoredConversationsCount` | `integer` | The number of conversations scanned by the AA human supervisor. |
| `aaSupervisorTransferredToHumanAgentConvCount` | `integer` | The number of conversations transferred to a human agent. |
| `aiCoachSuggestionAgentMessageTriggerCount` | `integer` | Count of agent messages that triggered an Ai Coach Suggestion. |
| `aiCoachSuggestionAgentUsageCount` | `integer` | Count of Ai Coach Suggestion that has been used by agents. |
| `aiCoachSuggestionAgentUsageRatio` | `number` | Proportion of Ai Coach Suggestion that has been used by agents. |
| `aiCoachSuggestionCustomerMessageTriggerCount` | `integer` | Count of customer messages that triggered an Ai Coach Suggestion. |
| `aiCoachSuggestionCustomerMessageTriggerRatio` | `number` | Proportion of customer messages that triggered an Ai Coach Suggestion. |
| `aiCoachSuggestionMessageTriggerCount` | `integer` | Count of end_of_utterance trigger event messages that triggered an Ai Coach Suggestion. |
| `aiCoachSuggestionMessageTriggerRatio` | `number` | Proportion of end_of_utterance trigger event messages that triggered an Ai Coach Suggestion. |
| `averageAgentSentimentScore` | `number` | The average agent's sentiment score. |
| `averageClientSentimentScore` | `number` | The average client's sentiment score. |
| `averageCustomerSatisfactionRating` | `number` | The average customer satisfaction rating. |
| `averageDuration` | `string` | The average duration. |
| `averageQaNormalizedScore` | `number` | The average normalized QA score for a scorecard. When computing the average across a set of conve... |
| `averageQaQuestionNormalizedScore` | `number` | Average QA normalized score averaged for questions averaged across all revisions of the parent sc... |
| `averageSilencePercentage` | `number` | The average silence percentage. |
| `averageSummarizationSuggestionEditDistance` | `number` | Average edit distance of the summarization suggestions. Edit distance (also called as levenshtein... |
| `averageSummarizationSuggestionNormalizedEditDistance` | `number` | Normalized Average edit distance of the summarization suggestions. Edit distance (also called as ... |
| `averageTurnCount` | `number` | The average turn count. |
| `avgConversationClientTurnSentimentEma` | `number` | The exponential moving average of the sentiment score of client turns in the conversation. |
| `containedConversationCount` | `integer` | The number of conversations that were contained. |
| `containedConversationRatio` | `number` | The percentage of conversations that were contained. |
| `conversationAiCoachSuggestionCount` | `integer` | Count of conversations that has Ai Coach Suggestions. |
| `conversationAiCoachSuggestionRatio` | `number` | Proportion of conversations that has Ai Coach Suggestions. |
| `conversationCount` | `integer` | The conversation count. |
| `conversationSuggestedSummaryRatio` | `number` | Proportion of conversations that had a suggested summary. |
| `conversationTotalAgentMessageCount` | `integer` | The agent message count. |
| `conversationTotalCustomerMessageCount` | `integer` | The customer message count. |
| `conversationalAgentsAverageAudioInAudioOutLatency` | `number` | The average latency of conversational agents' audio in audio out latency per interaction. This is... |
| `conversationalAgentsAverageEndToEndLatency` | `number` | The average latency of conversational agents' latency per interaction. This is computed as the av... |
| `conversationalAgentsAverageLlmCallLatency` | `number` | The average latency of conversational agents' LLM call latency per interaction. This is computed ... |
| `conversationalAgentsAverageTtsLatency` | `number` | The macro average latency of conversational agents' TTS latency per interaction. This is computed... |
| `dialogflowAverageWebhookLatency` | `number` | Average latency of dialogflow webhook calls. |
| `dialogflowConversationsEscalationCount` | `number` | count of conversations that was handed off from virtual agent to human agent. |
| `dialogflowConversationsEscalationRatio` | `number` | Proportion of conversations that was handed off from virtual agent to human agent. |
| `dialogflowInteractionsNoInputRatio` | `number` | Proportion of dialogflow interactions that has empty input. |
| `dialogflowInteractionsNoMatchRatio` | `number` | Proportion of dialogflow interactions that has no intent match for the input. |
| `dialogflowWebhookFailureRatio` | `number` | Proportion of dialogflow webhook calls that failed. |
| `dialogflowWebhookTimeoutRatio` | `number` | Proportion of dialogflow webhook calls that timed out. |
| `knowledgeAssistNegativeFeedbackRatio` | `number` | Proportion of knowledge assist (Proactive Generative Knowledge Assist) queries that had negative ... |
| `knowledgeAssistPositiveFeedbackRatio` | `number` | Proportion of knowledge assist (Proactive Generative Knowledge Assist) queries that had positive ... |
| `knowledgeAssistResultCount` | `integer` | Count of knowledge assist results (Proactive Generative Knowledge Assist) shown to the user. |
| `knowledgeAssistUriClickRatio` | `number` | Proportion of knowledge assist (Proactive Generative Knowledge Assist) queries that had a URL cli... |
| `knowledgeSearchAgentQuerySourceRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries made by the agent compared t... |
| `knowledgeSearchNegativeFeedbackRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries that had negative feedback. |
| `knowledgeSearchPositiveFeedbackRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries that had positive feedback. |
| `knowledgeSearchResultCount` | `integer` | Count of knowledge search results (Generative Knowledge Assist) shown to the user. |
| `knowledgeSearchSuggestedQuerySourceRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries suggested compared to the to... |
| `knowledgeSearchUriClickRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries that had a URL clicked. |
| `qaTagScores` | `array<GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore>` | Average QA normalized score for all the tags. |
| `summarizationSuggestionEditRatio` | `number` | Proportion of summarization suggestions that were manually edited. |
| `summarizationSuggestionResultCount` | `integer` | Count of summarization suggestions results. |

### `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointConversationMeasureQaTagScore`

Average QA normalized score for the tag.

| Property | Type | Description |
|----------|------|-------------|
| `averageTagNormalizedScore` | `number` | Average tag normalized score per tag. |
| `tag` | `string` | Tag name. |

### `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointDialogflowInteractionMeasure`

The measure related to dialogflow interactions.

| Property | Type | Description |
|----------|------|-------------|
| `percentileAudioInAudioOutLatency` | `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for audio in audio out latency in milliseconds per dialogflow interaction l... |
| `percentileEndToEndLatency` | `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for end to end chat latency in milliseconds per dialogflow interaction level. |
| `percentileLlmCallLatency` | `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for LLM latency in milliseconds per dialogflow interaction level. |
| `percentileToolUseLatency` | `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for tool use latency in milliseconds per dialogflow interaction level. |
| `percentileTtsLatency` | `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for TTS latency in milliseconds per dialogflow interaction level. |

### `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPointPercentileResult`

The percentile result. Currently supported percentiles are 50th, 90th, and 99th.

| Property | Type | Description |
|----------|------|-------------|
| `p50` | `number` | The 50th percentile value. |
| `p90` | `number` | The 90th percentile value. |
| `p99` | `number` | The 99th percentile value. |

### `GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceTimeSeries`

A time series of metric values.

| Property | Type | Description |
|----------|------|-------------|
| `dataPoints` | `array<GoogleCloudContactcenterinsightsV1alpha1QueryMetricsResponseSliceDataPoint>` | The data points that make up the time series . |

### `GoogleCloudContactcenterinsightsV1alpha1QueryPerformanceOverviewMetadata`

The metadata for querying performance overview.

### `GoogleCloudContactcenterinsightsV1alpha1QueryPerformanceOverviewResponse`

The response for querying performance overview.

| Property | Type | Description |
|----------|------|-------------|
| `summaryText` | `string` | The summary text of the performance. |

### `GoogleCloudContactcenterinsightsV1alpha1RedactionConfig`

DLP resources used for redaction while ingesting conversations. DLP settings are applied to conversations ingested from the `UploadConversation` and `IngestConversations` endpoints, including conversation coming from CCAI Platform. They are not applied to conversations ingested from the `CreateConversation` endpoint or the Dialogflow / Agent Assist runtime integrations. When using Dialogflow / Agent Assist runtime integrations, redaction should be performed in Dialogflow / Agent Assist.

| Property | Type | Description |
|----------|------|-------------|
| `deidentifyTemplate` | `string` | The fully-qualified DLP deidentify template resource name. Format: `projects/{project}/deidentify... |
| `inspectTemplate` | `string` | The fully-qualified DLP inspect template resource name. Format: `projects/{project}/locations/{lo... |

### `GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotation`

An annotation that was generated during the customer and agent interaction.

| Property | Type | Description |
|----------|------|-------------|
| `annotationId` | `string` | The unique identifier of the annotation. Format: projects/{project}/locations/{location}/conversa... |
| `answerFeedback` | `GoogleCloudContactcenterinsightsV1alpha1AnswerFeedback` | The feedback that the customer has about the answer in `data`. |
| `articleSuggestion` | `GoogleCloudContactcenterinsightsV1alpha1ArticleSuggestionData` | Agent Assist Article Suggestion data. |
| `conversationSummarizationSuggestion` | `GoogleCloudContactcenterinsightsV1alpha1ConversationSummarizationSuggestionData` | Conversation summarization suggestion data. |
| `createTime` | `string` | The time at which this annotation was created. |
| `dialogflowInteraction` | `GoogleCloudContactcenterinsightsV1alpha1DialogflowInteractionData` | Dialogflow interaction data. |
| `endBoundary` | `GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary` | The boundary in the conversation where the annotation ends, inclusive. |
| `faqAnswer` | `GoogleCloudContactcenterinsightsV1alpha1FaqAnswerData` | Agent Assist FAQ answer data. |
| `smartComposeSuggestion` | `GoogleCloudContactcenterinsightsV1alpha1SmartComposeSuggestionData` | Agent Assist Smart Compose suggestion data. |
| `smartReply` | `GoogleCloudContactcenterinsightsV1alpha1SmartReplyData` | Agent Assist Smart Reply data. |
| `startBoundary` | `GoogleCloudContactcenterinsightsV1alpha1AnnotationBoundary` | The boundary in the conversation where the annotation starts, inclusive. |
| `userInput` | `GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotationUserInput` | Explicit input used for generating the answer |

### `GoogleCloudContactcenterinsightsV1alpha1RuntimeAnnotationUserInput`

Explicit input used for generating the answer

| Property | Type | Description |
|----------|------|-------------|
| `generatorName` | `string` | The resource name of associated generator. Format: `projects//locations//generators/` |
| `query` | `string` | Query text. Article Search uses this to store the input query used to generate the search results. |
| `querySource` | `string` | Query source for the answer. |

### `GoogleCloudContactcenterinsightsV1alpha1SampleConversationsMetadata`

The metadata for an SampleConversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `partialErrors` | `array<GoogleRpcStatus>` | Output only. Partial errors during sample conversations operation that might cause the operation ... |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1SampleConversationsRequest` | Output only. The original request for sample conversations to dataset. |
| `sampleConversationsStats` | `GoogleCloudContactcenterinsightsV1alpha1SampleConversationsMetadataSampleConversationsStats` | Output only. Statistics for SampleConversations operation. |

### `GoogleCloudContactcenterinsightsV1alpha1SampleConversationsMetadataSampleConversationsStats`

Statistics for SampleConversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `failedSampleCount` | `integer` | Output only. The number of objects which were unable to be sampled due to errors. The errors are ... |
| `successfulSampleCount` | `integer` | Output only. The number of new conversations added during this sample operation. |

### `GoogleCloudContactcenterinsightsV1alpha1SampleConversationsRequest`

The request to sample conversations to a dataset.

| Property | Type | Description |
|----------|------|-------------|
| `destinationDataset` | `GoogleCloudContactcenterinsightsV1alpha1Dataset` | The dataset resource to copy the sampled conversations to. |
| `parent` | `string` | Required. The parent resource of the dataset. |
| `sampleRule` | `GoogleCloudContactcenterinsightsV1alpha1SampleRule` | Optional. The sample rule used for sampling conversations. |

### `GoogleCloudContactcenterinsightsV1alpha1SampleConversationsResponse`

The response to an SampleConversations operation.

### `GoogleCloudContactcenterinsightsV1alpha1SampleRule`

Message for sampling conversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversationFilter` | `string` | To specify the filter for the conversions that should apply this sample rule. An empty filter mea... |
| `dimension` | `string` | Optional. Group by dimension to sample the conversation. If no dimension is provided, the samplin... |
| `samplePercentage` | `number` | Percentage of conversations that we should sample based on the dimension between [0, 100]. |
| `sampleRow` | `string` | Number of the conversations that we should sample based on the dimension. |

### `GoogleCloudContactcenterinsightsV1alpha1SentimentData`

The data for a sentiment annotation.

| Property | Type | Description |
|----------|------|-------------|
| `magnitude` | `number` | A non-negative number from 0 to infinity which represents the absolute magnitude of sentiment reg... |
| `score` | `number` | The sentiment score between -1.0 (negative) and 1.0 (positive). |

### `GoogleCloudContactcenterinsightsV1alpha1SilenceData`

The data for a silence annotation.

### `GoogleCloudContactcenterinsightsV1alpha1SmartComposeSuggestionData`

Agent Assist Smart Compose suggestion data.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceScore` | `number` | The system's confidence score that this suggestion is a good match for this conversation, ranging... |
| `metadata` | `object` | Map that contains metadata about the Smart Compose suggestion and the document from which it orig... |
| `queryRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `suggestion` | `string` | The content of the suggestion. |

### `GoogleCloudContactcenterinsightsV1alpha1SmartReplyData`

Agent Assist Smart Reply data.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceScore` | `number` | The system's confidence score that this reply is a good match for this conversation, ranging from... |
| `metadata` | `object` | Map that contains metadata about the Smart Reply and the document from which it originates. |
| `queryRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `reply` | `string` | The content of the reply. |

### `GoogleCloudContactcenterinsightsV1alpha1SpeechConfig`

Speech-to-Text configuration. Speech-to-Text settings are applied to conversations ingested from the `UploadConversation` and `IngestConversations` endpoints, including conversation coming from CCAI Platform. They are not applied to conversations ingested from the `CreateConversation` endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `disableWordTimeOffsets` | `boolean` | Whether to disable word time offsets. If true, the `enable_word_time_offsets` field in the recogn... |
| `speechRecognizer` | `string` | The fully-qualified Speech Recognizer resource name. Format: `projects/{project_id}/locations/{lo... |

### `GoogleCloudContactcenterinsightsV1alpha1TestCorrelationConfigMetadata`

Metadata for testing correlation config.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `dataset` | `string` | The dataset used for sampling conversations. |
| `stats` | `GoogleCloudContactcenterinsightsV1alpha1TestCorrelationConfigMetadataFullConversationCorrelationStats` | The statistics for the operation. |

### `GoogleCloudContactcenterinsightsV1alpha1TestCorrelationConfigMetadataFullConversationCorrelationStats`

Statistics for TestCorrelationConfig operation.

| Property | Type | Description |
|----------|------|-------------|
| `conversationCorrelationErrors` | `array<GoogleCloudContactcenterinsightsV1alpha1TestCorrelationConfigMetadataFullConversationCorrelationStatsConversationCorrelationError>` | A list of errors that occurred during correlation, one for each conversation that failed. |
| `correlatedConversationsCount` | `integer` | The number of conversations correlated. |
| `failedConversationsCount` | `integer` | The number of conversations that failed correlation. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during test correlation config operation that might cause the operation output to ... |
| `sampledConversationsCount` | `integer` | The number of conversations sampled. |

### `GoogleCloudContactcenterinsightsV1alpha1TestCorrelationConfigMetadataFullConversationCorrelationStatsConversationCorrelationError`

An error that occurred during correlation for a specific conversation.

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `string` | The conversation resource name that had an error during correlation. |
| `status` | `GoogleRpcStatus` | The error status. |

### `GoogleCloudContactcenterinsightsV1alpha1TestCorrelationConfigResponse`

The response of testing correlation config.

| Property | Type | Description |
|----------|------|-------------|
| `detailedResults` | `GoogleCloudContactcenterinsightsV1alpha1TestCorrelationConfigResponseDetailedCorrelationResults` | Results for the DETAILED_SYNC execution mode. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during test correlation config operation that might cause the operation output to ... |

### `GoogleCloudContactcenterinsightsV1alpha1TestCorrelationConfigResponseDetailedCorrelationResults`

Wrapper for detailed, step-by-step results.

| Property | Type | Description |
|----------|------|-------------|
| `constraintResults` | `array<GoogleCloudContactcenterinsightsV1alpha1ConstraintEvaluationResult>` | A list of constraint evaluation results for each pair of conversations. |
| `joinKeyResults` | `array<GoogleCloudContactcenterinsightsV1alpha1ConversationCorrelationResult>` | A list of join key correlation results for each conversation tested. |

### `GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelMetadata`

Metadata for undeploying an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelRequest` | The original request for undeployment. |

### `GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelRequest`

The request to undeploy an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The issue model to undeploy. |

### `GoogleCloudContactcenterinsightsV1alpha1UndeployIssueModelResponse`

The response to undeploy an issue model.

### `GoogleCloudContactcenterinsightsV1alpha1UpdateQaQuestionTagMetadata`

The metadata for updating a QaQuestionTag Resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1UpdateQaQuestionTagRequest` | Output only. The original request. |

### `GoogleCloudContactcenterinsightsV1alpha1UpdateQaQuestionTagRequest`

The request for updating a QaQuestionTag.

| Property | Type | Description |
|----------|------|-------------|
| `qaQuestionTag` | `GoogleCloudContactcenterinsightsV1alpha1QaQuestionTag` | Required. The QaQuestionTag to update. |
| `updateMask` | `string` | Optional. The list of fields to be updated. All possible fields can be updated by passing `*`, or... |

### `GoogleCloudContactcenterinsightsV1alpha1UploadConversationMetadata`

The metadata for an `UploadConversation` operation.

| Property | Type | Description |
|----------|------|-------------|
| `analysisOperation` | `string` | Output only. The operation name for a successfully created analysis operation, if any. |
| `appliedRedactionConfig` | `GoogleCloudContactcenterinsightsV1alpha1RedactionConfig` | Output only. The redaction config applied to the uploaded conversation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1alpha1UploadConversationRequest` | Output only. The original request. |

### `GoogleCloudContactcenterinsightsV1alpha1UploadConversationRequest`

Request to upload a conversation.

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `GoogleCloudContactcenterinsightsV1alpha1Conversation` | Required. The conversation resource to create. |
| `conversationId` | `string` | Optional. A unique ID for the new conversation. This ID will become the final component of the co... |
| `parent` | `string` | Required. The parent resource of the conversation. |
| `redactionConfig` | `GoogleCloudContactcenterinsightsV1alpha1RedactionConfig` | Optional. DLP settings for transcript redaction. Will default to the config specified in Settings. |
| `speechConfig` | `GoogleCloudContactcenterinsightsV1alpha1SpeechConfig` | Optional. Speech-to-Text configuration. Will default to the config specified in Settings. |

### `GoogleCloudContactcenterinsightsV1mainAnalysis`

The analysis resource.

| Property | Type | Description |
|----------|------|-------------|
| `analysisResult` | `GoogleCloudContactcenterinsightsV1mainAnalysisResult` | Output only. The result of the analysis, which is populated when the analysis finishes. |
| `annotatorSelector` | `GoogleCloudContactcenterinsightsV1mainAnnotatorSelector` | To select the annotators to run and the phrase matchers to use (if any). If not specified, all an... |
| `createTime` | `string` | Output only. The time at which the analysis was created, which occurs when the long-running opera... |
| `name` | `string` | Immutable. The resource name of the analysis. Format: projects/{project}/locations/{location}/con... |
| `requestTime` | `string` | Output only. The time at which the analysis was requested. |

### `GoogleCloudContactcenterinsightsV1mainAnalysisResult`

The result of an analysis.

| Property | Type | Description |
|----------|------|-------------|
| `callAnalysisMetadata` | `GoogleCloudContactcenterinsightsV1mainAnalysisResultCallAnalysisMetadata` | Call-specific metadata created by the analysis. |
| `endTime` | `string` | The time at which the analysis ended. |

### `GoogleCloudContactcenterinsightsV1mainAnalysisResultCallAnalysisMetadata`

Call-specific metadata created during analysis.

| Property | Type | Description |
|----------|------|-------------|
| `annotations` | `array<GoogleCloudContactcenterinsightsV1mainCallAnnotation>` | A list of call annotations that apply to this call. |
| `entities` | `object` | All the entities in the call. |
| `intents` | `object` | All the matched intents in the call. |
| `issueModelResult` | `GoogleCloudContactcenterinsightsV1mainIssueModelResult` | Overall conversation-level issue modeling result. |
| `phraseMatchers` | `object` | All the matched phrase matchers in the call. |
| `qaScorecardResults` | `array<GoogleCloudContactcenterinsightsV1mainQaScorecardResult>` | Results of scoring QaScorecards. |
| `sentiments` | `array<GoogleCloudContactcenterinsightsV1mainConversationLevelSentiment>` | Overall conversation-level sentiment for each channel of the call. |
| `silence` | `GoogleCloudContactcenterinsightsV1mainConversationLevelSilence` | Overall conversation-level silence during the call. |

### `GoogleCloudContactcenterinsightsV1mainAnnotationBoundary`

A point in a conversation that marks the start or the end of an annotation.

| Property | Type | Description |
|----------|------|-------------|
| `transcriptIndex` | `integer` | The index in the sequence of transcribed pieces of the conversation where the boundary is located... |
| `wordIndex` | `integer` | The word index of this boundary with respect to the first word in the transcript piece. This inde... |

### `GoogleCloudContactcenterinsightsV1mainAnnotatorSelector`

Selector of all available annotators and phrase matchers to run.

| Property | Type | Description |
|----------|------|-------------|
| `issueModels` | `array<string>` | The issue model to run. If not provided, the most recently deployed topic model will be used. The... |
| `phraseMatchers` | `array<string>` | The list of phrase matchers to run. If not provided, all active phrase matchers will be used. If ... |
| `qaConfig` | `GoogleCloudContactcenterinsightsV1mainAnnotatorSelectorQaConfig` | Configuration for the QA annotator. |
| `runEntityAnnotator` | `boolean` | Whether to run the entity annotator. |
| `runIntentAnnotator` | `boolean` | Whether to run the intent annotator. |
| `runInterruptionAnnotator` | `boolean` | Whether to run the interruption annotator. |
| `runIssueModelAnnotator` | `boolean` | Whether to run the issue model annotator. A model should have already been deployed for this to t... |
| `runPhraseMatcherAnnotator` | `boolean` | Whether to run the active phrase matcher annotator(s). |
| `runQaAnnotator` | `boolean` | Whether to run the QA annotator. |
| `runSentimentAnnotator` | `boolean` | Whether to run the sentiment annotator. |
| `runSilenceAnnotator` | `boolean` | Whether to run the silence annotator. |
| `runSummarizationAnnotator` | `boolean` | Whether to run the summarization annotator. |
| `summarizationConfig` | `GoogleCloudContactcenterinsightsV1mainAnnotatorSelectorSummarizationConfig` | Configuration for the summarization annotator. |

### `GoogleCloudContactcenterinsightsV1mainAnnotatorSelectorQaConfig`

Configuration for the QA feature.

| Property | Type | Description |
|----------|------|-------------|
| `scorecardList` | `GoogleCloudContactcenterinsightsV1mainAnnotatorSelectorQaConfigScorecardList` | A manual list of scorecards to score. |

### `GoogleCloudContactcenterinsightsV1mainAnnotatorSelectorQaConfigScorecardList`

Container for a list of scorecards.

| Property | Type | Description |
|----------|------|-------------|
| `qaScorecardRevisions` | `array<string>` | List of QaScorecardRevisions. |

### `GoogleCloudContactcenterinsightsV1mainAnnotatorSelectorSummarizationConfig`

Configuration for summarization.

| Property | Type | Description |
|----------|------|-------------|
| `conversationProfile` | `string` | Resource name of the Dialogflow conversation profile. Format: projects/{project}/locations/{locat... |
| `generator` | `string` | The resource name of the existing created generator. Format: projects//locations//generators/ |
| `summarizationModel` | `string` | Default summarization model to be used. |

### `GoogleCloudContactcenterinsightsV1mainAnswerFeedback`

The feedback that the customer has about a certain answer in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `clicked` | `boolean` | Indicates whether an answer or item was clicked by the human agent. |
| `correctnessLevel` | `string` | The correctness level of an answer. |
| `displayed` | `boolean` | Indicates whether an answer or item was displayed to the human agent in the agent desktop UI. |

### `GoogleCloudContactcenterinsightsV1mainArticleSuggestionData`

Agent Assist Article Suggestion data.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceScore` | `number` | The system's confidence score that this article is a good match for this conversation, ranging fr... |
| `metadata` | `object` | Map that contains metadata about the Article Suggestion and the document that it originates from. |
| `queryRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `source` | `string` | The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeB... |
| `title` | `string` | Article title. |
| `uri` | `string` | Article URI. |

### `GoogleCloudContactcenterinsightsV1mainBulkAnalyzeConversationsMetadata`

The metadata for a bulk analyze conversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `completedAnalysesCount` | `integer` | The number of requested analyses that have completed successfully so far. |
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `failedAnalysesCount` | `integer` | The number of requested analyses that have failed so far. |
| `partialErrors` | `array<GoogleRpcStatus>` | Output only. Partial errors during bulk analyze operation that might cause the operation output t... |
| `request` | `GoogleCloudContactcenterinsightsV1mainBulkAnalyzeConversationsRequest` | The original request for bulk analyze. |
| `totalRequestedAnalysesCount` | `integer` | Total number of analyses requested. Computed by the number of conversations returned by `filter` ... |

### `GoogleCloudContactcenterinsightsV1mainBulkAnalyzeConversationsRequest`

The request to analyze conversations in bulk.

| Property | Type | Description |
|----------|------|-------------|
| `analysisPercentage` | `number` | Required. Percentage of selected conversation to analyze, between [0, 100]. |
| `annotatorSelector` | `GoogleCloudContactcenterinsightsV1mainAnnotatorSelector` | To select the annotators to run and the phrase matchers to use (if any). If not specified, all an... |
| `filter` | `string` | Required. Filter used to select the subset of conversations to analyze. |
| `parent` | `string` | Required. The parent resource to create analyses in. |

### `GoogleCloudContactcenterinsightsV1mainBulkAnalyzeConversationsResponse`

The response for a bulk analyze conversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `failedAnalysisCount` | `integer` | Count of failed analyses. |
| `successfulAnalysisCount` | `integer` | Count of successful analyses. |

### `GoogleCloudContactcenterinsightsV1mainBulkDeleteConversationsMetadata`

The metadata for a bulk delete conversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during bulk delete conversations operation that might cause the operation output t... |
| `request` | `GoogleCloudContactcenterinsightsV1mainBulkDeleteConversationsRequest` | The original request for bulk delete. |

### `GoogleCloudContactcenterinsightsV1mainBulkDeleteConversationsRequest`

The request to delete conversations in bulk.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Filter used to select the subset of conversations to delete. |
| `force` | `boolean` | If set to true, all of this conversation's analyses will also be deleted. Otherwise, the request ... |
| `maxDeleteCount` | `integer` | Maximum number of conversations to delete. |
| `parent` | `string` | Required. The parent resource to delete conversations from. Format: projects/{project}/locations/... |

### `GoogleCloudContactcenterinsightsV1mainBulkDeleteConversationsResponse`

The response for a bulk delete conversations operation.

### `GoogleCloudContactcenterinsightsV1mainBulkDeleteFeedbackLabelsMetadata`

Metadata for the BulkDeleteFeedbackLabels endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during deletion operation that might cause the operation output to be incomplete. |
| `request` | `GoogleCloudContactcenterinsightsV1mainBulkDeleteFeedbackLabelsRequest` | Output only. The original request for delete. |

### `GoogleCloudContactcenterinsightsV1mainBulkDeleteFeedbackLabelsRequest`

Request for the BulkDeleteFeedbackLabels endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | Optional. A filter to reduce results to a specific subset. Supports disjunctions (OR) and conjunc... |
| `parent` | `string` | Required. The parent resource for new feedback labels. |

### `GoogleCloudContactcenterinsightsV1mainBulkDeleteFeedbackLabelsResponse`

Response for the BulkDeleteFeedbackLabels endpoint.

### `GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsMetadata`

Metadata for the BulkDownloadFeedbackLabel endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `downloadStats` | `GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsMetadataDownloadStats` | Output only. Statistics for BulkDownloadFeedbackLabels operation. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during ingest operation that might cause the operation output to be incomplete. |
| `request` | `GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsRequest` | Output only. The original request for download. |

### `GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsMetadataDownloadStats`

Statistics for BulkDownloadFeedbackLabels operation.

| Property | Type | Description |
|----------|------|-------------|
| `fileNames` | `array<string>` | Output only. Full name of the files written to Cloud storage. |
| `processedObjectCount` | `integer` | The number of objects processed during the download operation. |
| `successfulDownloadCount` | `integer` | The number of new feedback labels downloaded during this operation. Different from "processed" be... |
| `totalFilesWritten` | `integer` | Total number of files written to the provided Cloud Storage bucket. |

### `GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsRequest`

Request for the BulkDownloadFeedbackLabel endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `conversationFilter` | `string` | Optional. Filter parent conversations to download feedback labels for. When specified, the feedba... |
| `feedbackLabelType` | `string` | Optional. The type of feedback labels that will be downloaded. |
| `filter` | `string` | Optional. A filter to reduce results to a specific subset. Supports disjunctions (OR) and conjunc... |
| `gcsDestination` | `GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsRequestGcsDestination` | A cloud storage bucket destination. |
| `maxDownloadCount` | `integer` | Optional. Limits the maximum number of feedback labels that will be downloaded. The first `N` fee... |
| `parent` | `string` | Required. The parent resource for new feedback labels. |
| `sheetsDestination` | `GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsRequestSheetsDestination` | A sheets document destination. |
| `templateQaScorecardId` | `array<string>` | Optional. If set, a template for labeling conversations and scorecard questions will be created f... |

### `GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsRequestGcsDestination`

Google Cloud Storage Object details to write the feedback labels to.

| Property | Type | Description |
|----------|------|-------------|
| `addWhitespace` | `boolean` | Optional. Add whitespace to the JSON file. Makes easier to read, but increases file size. Only ap... |
| `alwaysPrintEmptyFields` | `boolean` | Optional. Always print fields with no presence. This is useful for printing fields that are not s... |
| `format` | `string` | Required. File format in which the labels will be exported. |
| `objectUri` | `string` | Required. The Google Cloud Storage URI to write the feedback labels to. The file name will be use... |
| `recordsPerFileCount` | `string` | Optional. The number of records per file. Applicable for either format. |

### `GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsRequestSheetsDestination`

Google Sheets document details to write the feedback labels to.

| Property | Type | Description |
|----------|------|-------------|
| `sheetTitle` | `string` | Optional. The title of the new sheet to write the feedback labels to. |
| `spreadsheetUri` | `string` | Required. The Google Sheets document to write the feedback labels to. Retrieved from Google Sheet... |

### `GoogleCloudContactcenterinsightsV1mainBulkDownloadFeedbackLabelsResponse`

Response for the BulkDownloadFeedbackLabel endpoint.

### `GoogleCloudContactcenterinsightsV1mainCallAnnotation`

A piece of metadata that applies to a window of a call.

| Property | Type | Description |
|----------|------|-------------|
| `annotationEndBoundary` | `GoogleCloudContactcenterinsightsV1mainAnnotationBoundary` | The boundary in the conversation where the annotation ends, inclusive. |
| `annotationStartBoundary` | `GoogleCloudContactcenterinsightsV1mainAnnotationBoundary` | The boundary in the conversation where the annotation starts, inclusive. |
| `channelTag` | `integer` | The channel of the audio where the annotation occurs. For single-channel audio, this field is not... |
| `entityMentionData` | `GoogleCloudContactcenterinsightsV1mainEntityMentionData` | Data specifying an entity mention. |
| `holdData` | `GoogleCloudContactcenterinsightsV1mainHoldData` | Data specifying a hold. |
| `intentMatchData` | `GoogleCloudContactcenterinsightsV1mainIntentMatchData` | Data specifying an intent match. |
| `interruptionData` | `GoogleCloudContactcenterinsightsV1mainInterruptionData` | Data specifying an interruption. |
| `issueMatchData` | `GoogleCloudContactcenterinsightsV1mainIssueMatchData` | Data specifying an issue match. |
| `phraseMatchData` | `GoogleCloudContactcenterinsightsV1mainPhraseMatchData` | Data specifying a phrase match. |
| `sentimentData` | `GoogleCloudContactcenterinsightsV1mainSentimentData` | Data specifying sentiment. |
| `silenceData` | `GoogleCloudContactcenterinsightsV1mainSilenceData` | Data specifying silence. |

### `GoogleCloudContactcenterinsightsV1mainConstraintEvaluationResult`

The result of testing a constraint expression on a pair of conversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversationA` | `string` | The first conversation resource name. |
| `conversationB` | `string` | The second conversation resource name. |
| `ruleConstraintResults` | `array<GoogleCloudContactcenterinsightsV1mainConstraintEvaluationResultRuleConstraintResult>` | The results for each applicable constraint rule. |

### `GoogleCloudContactcenterinsightsV1mainConstraintEvaluationResultRuleConstraintResult`

The result of a single constraint rule on the pair of conversations.

| Property | Type | Description |
|----------|------|-------------|
| `constraintMet` | `boolean` | Whether the constraint expression evaluated to true for (A, B) or (B, A). |
| `error` | `GoogleRpcStatus` | The error status if the constraint expression failed to evaluate. |
| `ruleId` | `string` | The rule ID. |

### `GoogleCloudContactcenterinsightsV1mainConversation`

The conversation resource.

| Property | Type | Description |
|----------|------|-------------|
| `agentId` | `string` | An opaque, user-specified string representing the human agent who handled the conversation. |
| `callMetadata` | `GoogleCloudContactcenterinsightsV1mainConversationCallMetadata` | Call-specific metadata. |
| `correlationInfo` | `GoogleCloudContactcenterinsightsV1mainConversationCorrelationInfo` | Output only. Info for correlating across conversations. |
| `createTime` | `string` | Output only. The time at which the conversation was created. |
| `dataSource` | `GoogleCloudContactcenterinsightsV1mainConversationDataSource` | The source of the audio and transcription for the conversation. |
| `dialogflowIntents` | `object` | Output only. All the matched Dialogflow intents in the call. The key corresponds to a Dialogflow ... |
| `duration` | `string` | Output only. The duration of the conversation. |
| `expireTime` | `string` | The time at which this conversation should expire. After this time, the conversation data and any... |
| `labels` | `object` | A map for the user to specify any custom fields. A maximum of 100 labels per conversation is allo... |
| `languageCode` | `string` | A user-specified language code for the conversation. |
| `latestAnalysis` | `GoogleCloudContactcenterinsightsV1mainAnalysis` | Output only. The conversation's latest analysis, if one exists. |
| `latestSummary` | `GoogleCloudContactcenterinsightsV1mainConversationSummarizationSuggestionData` | Output only. Latest summary of the conversation. |
| `medium` | `string` | Immutable. The conversation medium. |
| `metadataJson` | `string` | Input only. JSON metadata encoded as a string. This field is primarily used by Insights integrati... |
| `name` | `string` | Immutable. The resource name of the conversation. Format: projects/{project}/locations/{location}... |
| `obfuscatedUserId` | `string` | Obfuscated user ID which the customer sent to us. |
| `qualityMetadata` | `GoogleCloudContactcenterinsightsV1mainConversationQualityMetadata` | Conversation metadata related to quality management. |
| `runtimeAnnotations` | `array<GoogleCloudContactcenterinsightsV1mainRuntimeAnnotation>` | Output only. The annotations that were generated during the customer and agent interaction. |
| `startTime` | `string` | The time at which the conversation started. |
| `transcript` | `GoogleCloudContactcenterinsightsV1mainConversationTranscript` | Output only. The conversation transcript. |
| `ttl` | `string` | Input only. The TTL for this resource. If specified, then this TTL will be used to calculate the ... |
| `turnCount` | `integer` | Output only. The number of turns in the conversation. |
| `updateTime` | `string` | Output only. The most recent time at which the conversation was updated. |

### `GoogleCloudContactcenterinsightsV1mainConversationCallMetadata`

Call-specific metadata.

| Property | Type | Description |
|----------|------|-------------|
| `agentChannel` | `integer` | The audio channel that contains the agent. |
| `customerChannel` | `integer` | The audio channel that contains the customer. |

### `GoogleCloudContactcenterinsightsV1mainConversationCorrelationInfo`

Info for correlating across conversations.

| Property | Type | Description |
|----------|------|-------------|
| `correlationTypes` | `array<string>` | Output only. The correlation types of this conversation. A single conversation can have multiple ... |
| `fullConversationCorrelationId` | `string` | Output only. The full conversation correlation id this conversation is a segment of. |
| `mergedFullConversationCorrelationId` | `string` | Output only. The full conversation correlation id this conversation is a merged conversation of. |

### `GoogleCloudContactcenterinsightsV1mainConversationCorrelationResult`

The result of testing correlation config on a single conversation.

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `string` | The conversation resource name. |
| `ruleResults` | `array<GoogleCloudContactcenterinsightsV1mainConversationCorrelationResultRuleCorrelationResult>` | The results for each correlation rule. |

### `GoogleCloudContactcenterinsightsV1mainConversationCorrelationResultRuleCorrelationResult`

The result of a single correlation rule.

| Property | Type | Description |
|----------|------|-------------|
| `correlationId` | `string` | The correlation ID generated by the join key expression. |
| `error` | `GoogleRpcStatus` | The error status if the join key expression failed to evaluate. |
| `ruleId` | `string` | The rule ID. |

### `GoogleCloudContactcenterinsightsV1mainConversationDataSource`

The conversation source, which is a combination of transcript and audio.

| Property | Type | Description |
|----------|------|-------------|
| `dialogflowSource` | `GoogleCloudContactcenterinsightsV1mainDialogflowSource` | The source when the conversation comes from Dialogflow. |
| `gcsSource` | `GoogleCloudContactcenterinsightsV1mainGcsSource` | A Cloud Storage location specification for the audio and transcript. |
| `metadataUri` | `string` | Cloud Storage URI that points to a file that contains the conversation metadata. |

### `GoogleCloudContactcenterinsightsV1mainConversationLevelSentiment`

One channel of conversation-level sentiment data.

| Property | Type | Description |
|----------|------|-------------|
| `channelTag` | `integer` | The channel of the audio that the data applies to. |
| `sentimentData` | `GoogleCloudContactcenterinsightsV1mainSentimentData` | Data specifying sentiment. |

### `GoogleCloudContactcenterinsightsV1mainConversationLevelSilence`

Conversation-level silence data.

| Property | Type | Description |
|----------|------|-------------|
| `silenceDuration` | `string` | Amount of time calculated to be in silence. |
| `silencePercentage` | `number` | Percentage of the total conversation spent in silence. |

### `GoogleCloudContactcenterinsightsV1mainConversationParticipant`

The call participant speaking for a given utterance.

| Property | Type | Description |
|----------|------|-------------|
| `dialogflowParticipant` | `string` | Deprecated. Use `dialogflow_participant_name` instead. The name of the Dialogflow participant. Fo... |
| `dialogflowParticipantName` | `string` | The name of the participant provided by Dialogflow. Format: projects/{project}/locations/{locatio... |
| `obfuscatedExternalUserId` | `string` | Obfuscated user ID from Dialogflow. |
| `role` | `string` | The role of the participant. |
| `userId` | `string` | A user-specified ID representing the participant. |

### `GoogleCloudContactcenterinsightsV1mainConversationQualityMetadata`

Conversation metadata related to quality management.

| Property | Type | Description |
|----------|------|-------------|
| `agentInfo` | `array<GoogleCloudContactcenterinsightsV1mainConversationQualityMetadataAgentInfo>` | Information about agents involved in the call. |
| `customerSatisfactionRating` | `integer` | An arbitrary integer value indicating the customer's satisfaction rating. |
| `feedbackLabels` | `array<GoogleCloudContactcenterinsightsV1mainFeedbackLabel>` | Input only. The feedback labels associated with the conversation. |
| `menuPath` | `string` | An arbitrary string value specifying the menu path the customer took. |
| `waitDuration` | `string` | The amount of time the customer waited to connect with an agent. |

### `GoogleCloudContactcenterinsightsV1mainConversationQualityMetadataAgentInfo`

Information about an agent involved in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `agentId` | `string` | A user-specified string representing the agent. |
| `agentType` | `string` | The agent type, e.g. HUMAN_AGENT. |
| `deploymentDisplayName` | `string` | The agent's deployment display name. Only applicable to automated agents. |
| `deploymentId` | `string` | The agent's deployment ID. Only applicable to automated agents. |
| `displayName` | `string` | The agent's name. |
| `dispositionCode` | `string` | A user-provided string indicating the outcome of the agent's segment of the call. |
| `location` | `string` | The agent's location. |
| `team` | `string` | A user-specified string representing the agent's team. Deprecated in favor of the `teams` field. |
| `teams` | `array<string>` | User-specified strings representing the agent's teams. |
| `versionDisplayName` | `string` | The agent's version display name. Only applicable to automated agents. |
| `versionId` | `string` | The agent's version ID. Only applicable to automated agents. |

### `GoogleCloudContactcenterinsightsV1mainConversationSummarizationSuggestionData`

Conversation summarization suggestion data.

| Property | Type | Description |
|----------|------|-------------|
| `answerRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `confidence` | `number` | The confidence score of the summarization. |
| `conversationModel` | `string` | The name of the model that generates this summary. Format: projects/{project}/locations/{location... |
| `generatorId` | `string` | Agent Assist generator ID. |
| `metadata` | `object` | A map that contains metadata about the summarization and the document from which it originates. |
| `text` | `string` | The summarization content that is concatenated into one string. |
| `textSections` | `object` | The summarization content that is divided into sections. The key is the section's name and the va... |

### `GoogleCloudContactcenterinsightsV1mainConversationTranscript`

A message representing the transcript of a conversation.

| Property | Type | Description |
|----------|------|-------------|
| `transcriptSegments` | `array<GoogleCloudContactcenterinsightsV1mainConversationTranscriptTranscriptSegment>` | A list of sequential transcript segments that comprise the conversation. |

### `GoogleCloudContactcenterinsightsV1mainConversationTranscriptTranscriptSegment`

A segment of a full transcript.

| Property | Type | Description |
|----------|------|-------------|
| `channelTag` | `integer` | For conversations derived from multi-channel audio, this is the channel number corresponding to t... |
| `confidence` | `number` | A confidence estimate between 0.0 and 1.0 of the fidelity of this segment. A default value of 0.0... |
| `dialogflowSegmentMetadata` | `GoogleCloudContactcenterinsightsV1mainConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata` | CCAI metadata relating to the current transcript segment. |
| `languageCode` | `string` | The language code of this segment as a [BCP-47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt) lan... |
| `messageTime` | `string` | The time that the message occurred, if provided. |
| `segmentParticipant` | `GoogleCloudContactcenterinsightsV1mainConversationParticipant` | The participant of this segment. |
| `sentiment` | `GoogleCloudContactcenterinsightsV1mainSentimentData` | The sentiment for this transcript segment. |
| `text` | `string` | The text of this segment. |
| `words` | `array<GoogleCloudContactcenterinsightsV1mainConversationTranscriptTranscriptSegmentWordInfo>` | A list of the word-specific information for each word in the segment. |

### `GoogleCloudContactcenterinsightsV1mainConversationTranscriptTranscriptSegmentDialogflowSegmentMetadata`

Metadata from Dialogflow relating to the current transcript segment.

| Property | Type | Description |
|----------|------|-------------|
| `smartReplyAllowlistCovered` | `boolean` | Whether the transcript segment was covered under the configured smart reply allowlist in Agent As... |

### `GoogleCloudContactcenterinsightsV1mainConversationTranscriptTranscriptSegmentWordInfo`

Word-level info for words in a transcript.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | A confidence estimate between 0.0 and 1.0 of the fidelity of this word. A default value of 0.0 in... |
| `endOffset` | `string` | Time offset of the end of this word relative to the beginning of the total conversation. |
| `startOffset` | `string` | Time offset of the start of this word relative to the beginning of the total conversation. |
| `word` | `string` | The word itself. Includes punctuation marks that surround the word. |

### `GoogleCloudContactcenterinsightsV1mainCreateAnalysisOperationMetadata`

Metadata for a create analysis operation.

| Property | Type | Description |
|----------|------|-------------|
| `annotatorSelector` | `GoogleCloudContactcenterinsightsV1mainAnnotatorSelector` | Output only. The annotator selector used for the analysis (if any). |
| `conversation` | `string` | Output only. The Conversation that this Analysis Operation belongs to. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |

### `GoogleCloudContactcenterinsightsV1mainCreateIssueMetadata`

Metadata for creating an issue.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1mainCreateIssueRequest` | The original request for creation. |

### `GoogleCloudContactcenterinsightsV1mainCreateIssueModelMetadata`

Metadata for creating an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1mainCreateIssueModelRequest` | The original request for creation. |

### `GoogleCloudContactcenterinsightsV1mainCreateIssueModelRequest`

The request to create an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `issueModel` | `GoogleCloudContactcenterinsightsV1mainIssueModel` | Required. The issue model to create. |
| `parent` | `string` | Required. The parent resource of the issue model. |

### `GoogleCloudContactcenterinsightsV1mainCreateIssueRequest`

The request to create an issue.

| Property | Type | Description |
|----------|------|-------------|
| `issue` | `GoogleCloudContactcenterinsightsV1mainIssue` | Required. The values for the new issue. |
| `parent` | `string` | Required. The parent resource of the issue. |

### `GoogleCloudContactcenterinsightsV1mainDataset`

Dataset resource represents a collection of conversations that may be bounded (Static Dataset, e.g. golden dataset for training), or unbounded (Dynamic Dataset, e.g. live traffic, or agent training traffic)

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Dataset create time. |
| `description` | `string` | Dataset description. |
| `displayName` | `string` | Display name for the dataaset |
| `name` | `string` | Immutable. Identifier. Resource name of the dataset. Format: projects/{project}/locations/{locati... |
| `ttl` | `string` | Optional. Option TTL for the dataset. |
| `type` | `string` | Dataset usage type. |
| `updateTime` | `string` | Output only. Dataset update time. |

### `GoogleCloudContactcenterinsightsV1mainDeleteIssueModelMetadata`

Metadata for deleting an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1mainDeleteIssueModelRequest` | The original request for deletion. |

### `GoogleCloudContactcenterinsightsV1mainDeleteIssueModelRequest`

The request to delete an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the issue model to delete. |

### `GoogleCloudContactcenterinsightsV1mainDeleteQaQuestionTagMetadata`

The metadata for deleting a QaQuestionTag Resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1mainDeleteQaQuestionTagRequest` | Output only. The original request. |

### `GoogleCloudContactcenterinsightsV1mainDeleteQaQuestionTagRequest`

The request for deleting a QaQuestionTag.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The name of the QaQuestionTag to delete. |

### `GoogleCloudContactcenterinsightsV1mainDeployIssueModelMetadata`

Metadata for deploying an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1mainDeployIssueModelRequest` | The original request for deployment. |

### `GoogleCloudContactcenterinsightsV1mainDeployIssueModelRequest`

The request to deploy an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The issue model to deploy. |

### `GoogleCloudContactcenterinsightsV1mainDeployIssueModelResponse`

The response to deploy an issue model.

### `GoogleCloudContactcenterinsightsV1mainDialogflowIntent`

The data for a Dialogflow intent. Represents a detected intent in the conversation, e.g. MAKES_PROMISE.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the intent. |

### `GoogleCloudContactcenterinsightsV1mainDialogflowInteractionData`

Dialogflow interaction data.

| Property | Type | Description |
|----------|------|-------------|
| `confidence` | `number` | The confidence of the match ranging from 0.0 (completely uncertain) to 1.0 (completely certain). |
| `dialogflowIntentId` | `string` | The Dialogflow intent resource path. Format: projects/{project}/agent/{agent}/intents/{intent} |

### `GoogleCloudContactcenterinsightsV1mainDialogflowSource`

A Dialogflow source of conversation data.

| Property | Type | Description |
|----------|------|-------------|
| `audioUri` | `string` | Cloud Storage URI that points to a file that contains the conversation audio. |
| `dialogflowConversation` | `string` | Output only. The name of the Dialogflow conversation that this conversation resource is derived f... |

### `GoogleCloudContactcenterinsightsV1mainDimension`

A dimension determines the grouping key for the query. In SQL terms, these would be part of both the "SELECT" and "GROUP BY" clauses.

| Property | Type | Description |
|----------|------|-------------|
| `agentDimensionMetadata` | `GoogleCloudContactcenterinsightsV1mainDimensionAgentDimensionMetadata` | Output only. Metadata about the agent dimension. |
| `clientSentimentCategoryDimensionMetadata` | `GoogleCloudContactcenterinsightsV1mainDimensionClientSentimentCategoryDimensionMetadata` | Output only. Metadata about the client sentiment category dimension. |
| `conversationProfileDimensionMetadata` | `GoogleCloudContactcenterinsightsV1mainDimensionConversationProfileDimensionMetadata` | Output only. Metadata about the conversation profile dimension. |
| `conversationalAgentsPlaybookDimensionMetadata` | `GoogleCloudContactcenterinsightsV1mainDimensionConversationalAgentsPlaybookDimensionMetadata` | Output only. Metadata about the Conversational Agents playbook dimension. |
| `conversationalAgentsToolDimensionMetadata` | `GoogleCloudContactcenterinsightsV1mainDimensionConversationalAgentsToolDimensionMetadata` | Output only. Metadata about the Conversational Agents tool dimension. |
| `dimensionKey` | `string` | The key of the dimension. |
| `issueDimensionMetadata` | `GoogleCloudContactcenterinsightsV1mainDimensionIssueDimensionMetadata` | Output only. Metadata about the issue dimension. |
| `labelDimensionMetadata` | `GoogleCloudContactcenterinsightsV1mainDimensionLabelDimensionMetadata` | Output only. Metadata about conversation labels. |
| `mediumDimensionMetadata` | `GoogleCloudContactcenterinsightsV1mainDimensionMediumDimensionMetadata` | Output only. Metadata about the conversation medium dimension. |
| `qaQuestionAnswerDimensionMetadata` | `GoogleCloudContactcenterinsightsV1mainDimensionQaQuestionAnswerDimensionMetadata` | Output only. Metadata about the QA question-answer dimension. |
| `qaQuestionDimensionMetadata` | `GoogleCloudContactcenterinsightsV1mainDimensionQaQuestionDimensionMetadata` | Output only. Metadata about the QA question dimension. |
| `qaScorecardDimensionMetadata` | `GoogleCloudContactcenterinsightsV1mainDimensionQaScorecardDimensionMetadata` | Output only. Metadata about the QA scorecard dimension. |

### `GoogleCloudContactcenterinsightsV1mainDimensionAgentDimensionMetadata`

Metadata about the agent dimension.

| Property | Type | Description |
|----------|------|-------------|
| `agentDeploymentDisplayName` | `string` | Optional. The agent's deployment display name. Only applicable to automated agents. This will be ... |
| `agentDeploymentId` | `string` | Optional. The agent's deployment ID. Only applicable to automated agents. This will be populated ... |
| `agentDisplayName` | `string` | Optional. The agent's name This will be populated for AGENT, AGENT_TEAM, AGENT_VERSION_ID, and AG... |
| `agentId` | `string` | Optional. A user-specified string representing the agent. This will be populated for AGENT, AGENT... |
| `agentTeam` | `string` | Optional. A user-specified string representing the agent's team. |
| `agentVersionDisplayName` | `string` | Optional. The agent's version display name. Only applicable to automated agents. This will be pop... |
| `agentVersionId` | `string` | Optional. The agent's version ID. Only applicable to automated agents. This will be populated for... |

### `GoogleCloudContactcenterinsightsV1mainDimensionClientSentimentCategoryDimensionMetadata`

Metadata about the client sentiment category dimension.

| Property | Type | Description |
|----------|------|-------------|
| `sentimentCategory` | `string` | Optional. The client sentiment category. |

### `GoogleCloudContactcenterinsightsV1mainDimensionConversationProfileDimensionMetadata`

Metadata about the conversation profile dimension.

| Property | Type | Description |
|----------|------|-------------|
| `conversationProfileId` | `string` | Optional. The conversation profile ID. |

### `GoogleCloudContactcenterinsightsV1mainDimensionConversationalAgentsPlaybookDimensionMetadata`

Metadata about the Conversational Agents playbook dimension.

| Property | Type | Description |
|----------|------|-------------|
| `playbookDisplayName` | `string` | Optional. The dialogflow playbook display name. |
| `playbookId` | `string` | Optional. The dialogflow playbook ID. |

### `GoogleCloudContactcenterinsightsV1mainDimensionConversationalAgentsToolDimensionMetadata`

Metadata about the Conversational Agents tool dimension.

| Property | Type | Description |
|----------|------|-------------|
| `toolDisplayName` | `string` | Optional. The dialogflow tool display name. |
| `toolId` | `string` | Optional. The dialogflow tool ID. |

### `GoogleCloudContactcenterinsightsV1mainDimensionIssueDimensionMetadata`

Metadata about the issue dimension.

| Property | Type | Description |
|----------|------|-------------|
| `issueDisplayName` | `string` | The issue display name. |
| `issueId` | `string` | The issue ID. |
| `issueModelId` | `string` | The parent issue model ID. |

### `GoogleCloudContactcenterinsightsV1mainDimensionLabelDimensionMetadata`

Metadata about conversation labels.

| Property | Type | Description |
|----------|------|-------------|
| `labelKey` | `string` | Optional. The label key. |
| `labelValue` | `string` | Optional. The label value. |

### `GoogleCloudContactcenterinsightsV1mainDimensionMediumDimensionMetadata`

Metadata about the conversation medium dimension.

| Property | Type | Description |
|----------|------|-------------|
| `medium` | `string` | Optional. The conversation medium. Currently supports : PHONE_CALL, CHAT. |

### `GoogleCloudContactcenterinsightsV1mainDimensionQaQuestionAnswerDimensionMetadata`

Metadata about the QA question-answer dimension. This is useful for showing the answer distribution for questions for a given scorecard.

| Property | Type | Description |
|----------|------|-------------|
| `answerValue` | `string` | Optional. The full body of the question. |
| `qaQuestionId` | `string` | Optional. The QA question ID. |
| `qaScorecardId` | `string` | Optional. The QA scorecard ID. |
| `questionBody` | `string` | Optional. The full body of the question. |

### `GoogleCloudContactcenterinsightsV1mainDimensionQaQuestionDimensionMetadata`

Metadata about the QA question dimension.

| Property | Type | Description |
|----------|------|-------------|
| `qaQuestionId` | `string` | Optional. The QA question ID. |
| `qaScorecardId` | `string` | Optional. The QA scorecard ID. |
| `questionBody` | `string` | Optional. The full body of the question. |

### `GoogleCloudContactcenterinsightsV1mainDimensionQaScorecardDimensionMetadata`

Metadata about the QA scorecard dimension.

| Property | Type | Description |
|----------|------|-------------|
| `qaScorecardId` | `string` | Optional. The QA scorecard ID. |

### `GoogleCloudContactcenterinsightsV1mainEncryptionSpec`

A customer-managed encryption key specification that can be applied to all created resources (e.g. `Conversation`).

| Property | Type | Description |
|----------|------|-------------|
| `kmsKey` | `string` | Required. The name of customer-managed encryption key that is used to secure a resource and its s... |
| `name` | `string` | Immutable. The resource name of the encryption key specification resource. Format: projects/{proj... |

### `GoogleCloudContactcenterinsightsV1mainEntity`

The data for an entity annotation. Represents a phrase in the conversation that is a known entity, such as a person, an organization, or location.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The representative name for the entity. |
| `metadata` | `object` | Metadata associated with the entity. For most entity types, the metadata is a Wikipedia URL (`wik... |
| `salience` | `number` | The salience score associated with the entity in the [0, 1.0] range. The salience score for an en... |
| `sentiment` | `GoogleCloudContactcenterinsightsV1mainSentimentData` | The aggregate sentiment expressed for this entity in the conversation. |
| `type` | `string` | The entity type. |

### `GoogleCloudContactcenterinsightsV1mainEntityMentionData`

The data for an entity mention annotation. This represents a mention of an `Entity` in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `entityUniqueId` | `string` | The key of this entity in conversation entities. Can be used to retrieve the exact `Entity` this ... |
| `sentiment` | `GoogleCloudContactcenterinsightsV1mainSentimentData` | Sentiment expressed for this mention of the entity. |
| `type` | `string` | The type of the entity mention. |

### `GoogleCloudContactcenterinsightsV1mainExportInsightsDataMetadata`

Metadata for an export insights operation.

| Property | Type | Description |
|----------|------|-------------|
| `completedExportCount` | `integer` | The number of conversations that were exported successfully. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `failedExportCount` | `integer` | The number of conversations that failed to be exported. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during export operation that might cause the operation output to be incomplete. |
| `request` | `GoogleCloudContactcenterinsightsV1mainExportInsightsDataRequest` | The original request for export. |

### `GoogleCloudContactcenterinsightsV1mainExportInsightsDataRequest`

The request to export insights.

| Property | Type | Description |
|----------|------|-------------|
| `bigQueryDestination` | `GoogleCloudContactcenterinsightsV1mainExportInsightsDataRequestBigQueryDestination` | Specified if sink is a BigQuery table. |
| `exportSchemaVersion` | `string` | Optional. Version of the export schema. |
| `filter` | `string` | A filter to reduce results to a specific subset. Useful for exporting conversations with specific... |
| `kmsKey` | `string` | A fully qualified KMS key name for BigQuery tables protected by CMEK. Format: projects/{project}/... |
| `parent` | `string` | Required. The parent resource to export data from. |
| `writeDisposition` | `string` | Options for what to do if the destination table already exists. |

### `GoogleCloudContactcenterinsightsV1mainExportInsightsDataRequestBigQueryDestination`

A BigQuery Table Reference.

| Property | Type | Description |
|----------|------|-------------|
| `dataset` | `string` | Required. The name of the BigQuery dataset that the snapshot result should be exported to. If thi... |
| `projectId` | `string` | A project ID or number. If specified, then export will attempt to write data to this project inst... |
| `table` | `string` | The BigQuery table name to which the insights data should be written. If this table does not exis... |

### `GoogleCloudContactcenterinsightsV1mainExportInsightsDataResponse`

Response for an export insights operation.

### `GoogleCloudContactcenterinsightsV1mainExportIssueModelMetadata`

Metadata used for export issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1mainExportIssueModelRequest` | The original export request. |

### `GoogleCloudContactcenterinsightsV1mainExportIssueModelRequest`

Request to export an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `gcsDestination` | `GoogleCloudContactcenterinsightsV1mainExportIssueModelRequestGcsDestination` | Google Cloud Storage URI to export the issue model to. |
| `name` | `string` | Required. The issue model to export. |

### `GoogleCloudContactcenterinsightsV1mainExportIssueModelRequestGcsDestination`

Google Cloud Storage Object URI to save the issue model to.

| Property | Type | Description |
|----------|------|-------------|
| `objectUri` | `string` | Required. Format: `gs:///` |

### `GoogleCloudContactcenterinsightsV1mainExportIssueModelResponse`

Response from export issue model

### `GoogleCloudContactcenterinsightsV1mainFaqAnswerData`

Agent Assist frequently-asked-question answer data.

| Property | Type | Description |
|----------|------|-------------|
| `answer` | `string` | The piece of text from the `source` knowledge base document. |
| `confidenceScore` | `number` | The system's confidence score that this answer is a good match for this conversation, ranging fro... |
| `metadata` | `object` | Map that contains metadata about the FAQ answer and the document that it originates from. |
| `queryRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `question` | `string` | The corresponding FAQ question. |
| `source` | `string` | The knowledge document that this answer was extracted from. Format: projects/{project}/knowledgeB... |

### `GoogleCloudContactcenterinsightsV1mainFeedbackLabel`

Represents a conversation, resource, and label provided by the user. Can take the form of a string label or a QaAnswer label. QaAnswer labels are used for Quality AI example conversations. String labels are used for Topic Modeling. AgentAssistSummary labels are used for Agent Assist Summarization.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. Create time of the label. |
| `label` | `string` | String label used for Topic Modeling. |
| `labeledResource` | `string` | Name of the resource to be labeled. Supported resources are: * `projects/{project}/locations/{loc... |
| `name` | `string` | Immutable. Resource name of the FeedbackLabel. Format: projects/{project}/locations/{location}/co... |
| `qaAnswerLabel` | `GoogleCloudContactcenterinsightsV1mainQaAnswerAnswerValue` | QaAnswer label used for Quality AI example conversations. |
| `updateTime` | `string` | Output only. Update time of the label. |

### `GoogleCloudContactcenterinsightsV1mainGcsSource`

A Cloud Storage source of conversation data.

| Property | Type | Description |
|----------|------|-------------|
| `audioUri` | `string` | Cloud Storage URI that points to a file that contains the conversation audio. |
| `transcriptUri` | `string` | Immutable. Cloud Storage URI that points to a file that contains the conversation transcript. |

### `GoogleCloudContactcenterinsightsV1mainGenerativeInsightConversationTranscript`

The conversation transcript for the chart.

| Property | Type | Description |
|----------|------|-------------|
| `conversationId` | `string` | The conversation id of the chart. |
| `createTime` | `string` | Output only. The create time of the conversation. |
| `messages` | `array<GoogleCloudContactcenterinsightsV1mainGenerativeInsightConversationTranscriptMessage>` | Ordered list of messages, including user inputs and system responses. |
| `updateTime` | `string` | Output only. The update time of the conversation. |

### `GoogleCloudContactcenterinsightsV1mainGenerativeInsightConversationTranscriptMessage`

The message in the conversation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. For user messages, this is the time at which the system received the message. For sy... |
| `messageId` | `string` | The message id of the message. |
| `systemMessageWrapper` | `GoogleCloudContactcenterinsightsV1mainGenerativeInsightConversationTranscriptMessageSystemMessages` | A wrapper for system messages per turn. |
| `userMessage` | `GoogleCloudContactcenterinsightsV1mainGenerativeInsightConversationTranscriptMessageUserMessage` | A message from the user that is interacting with the system. |

### `GoogleCloudContactcenterinsightsV1mainGenerativeInsightConversationTranscriptMessageSystemMessage`

A message from the system in response to the user. This message can also be a message from the user as historical context for multiturn conversations with the system.

| Property | Type | Description |
|----------|------|-------------|
| `chartSpec` | `object` | Chart spec from LLM |
| `generatedSqlQuery` | `string` | Raw SQL from LLM, before templatization |
| `textMessage` | `GoogleCloudContactcenterinsightsV1mainGenerativeInsightConversationTranscriptMessageSystemMessageTextOutput` | A direct natural language response to the user message. |
| `userProvidedChartSpec` | `object` | Optional. User provided chart spec |
| `userProvidedSqlQuery` | `string` | Optional. User provided SQL query |

### `GoogleCloudContactcenterinsightsV1mainGenerativeInsightConversationTranscriptMessageSystemMessageTextOutput`

A text output message from the system.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `array<string>` | The parts of the message. |
| `textType` | `string` | The type of the text message. |

### `GoogleCloudContactcenterinsightsV1mainGenerativeInsightConversationTranscriptMessageSystemMessages`

A wrapper for system messages per turn.

| Property | Type | Description |
|----------|------|-------------|
| `systemMessages` | `array<GoogleCloudContactcenterinsightsV1mainGenerativeInsightConversationTranscriptMessageSystemMessage>` | A message from the system in response to the user. |

### `GoogleCloudContactcenterinsightsV1mainGenerativeInsightConversationTranscriptMessageUserMessage`

The user message.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `string` | A message from the user that is interacting with the system. |

### `GoogleCloudContactcenterinsightsV1mainGenerativeInsightsMetadata`

The metadata for generative insights.

| Property | Type | Description |
|----------|------|-------------|
| `errorMessages` | `array<GoogleRpcStatus>` | The error message when the generative insights request fails. |

### `GoogleCloudContactcenterinsightsV1mainGenerativeInsightsResponse`

The response for generative insights.

| Property | Type | Description |
|----------|------|-------------|
| `generativeResponses` | `array<GoogleCloudContactcenterinsightsV1mainGenerativeInsightsResponseGenerativeResponse>` | The full list of generative responses. Each response is ordered by time. |
| `transcript` | `GoogleCloudContactcenterinsightsV1mainGenerativeInsightConversationTranscript` | The transcript of the generative insights conversation. |

### `GoogleCloudContactcenterinsightsV1mainGenerativeInsightsResponseGenerativeResponse`

Wrapper for storing the generative response for a chart.

| Property | Type | Description |
|----------|------|-------------|
| `chartSpec` | `object` | The chart spec for the data. This will be specified in the vega-lite or vega format. |
| `generatedSqlQuery` | `string` | The generated SQL query from the LLM. Will be populated during the chart building phase. The gene... |
| `textMessage` | `GoogleCloudContactcenterinsightsV1mainGenerativeInsightsResponseGenerativeResponseTextOutput` | The text output from the LLM. Will be populated during the chart building phase. For a reloaded c... |
| `textOutput` | `string` | The text output from the LLM. Will be populated during the chart building phase. For a reloaded c... |

### `GoogleCloudContactcenterinsightsV1mainGenerativeInsightsResponseGenerativeResponseTextOutput`

Wrapper for text output.

| Property | Type | Description |
|----------|------|-------------|
| `text` | `array<string>` | The text output from the LLM. |
| `textType` | `string` | The type of text output. |

### `GoogleCloudContactcenterinsightsV1mainHoldData`

The data for a hold annotation.

### `GoogleCloudContactcenterinsightsV1mainImportIssueModelMetadata`

Metadata used for import issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | The time the operation was created. |
| `endTime` | `string` | The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1mainImportIssueModelRequest` | The original import request. |

### `GoogleCloudContactcenterinsightsV1mainImportIssueModelRequest`

Request to import an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createNewModel` | `boolean` | Optional. If set to true, will create an issue model from the imported file with randomly generat... |
| `gcsSource` | `GoogleCloudContactcenterinsightsV1mainImportIssueModelRequestGcsSource` | Google Cloud Storage source message. |
| `parent` | `string` | Required. The parent resource of the issue model. |

### `GoogleCloudContactcenterinsightsV1mainImportIssueModelRequestGcsSource`

Google Cloud Storage Object URI to get the issue model file from.

| Property | Type | Description |
|----------|------|-------------|
| `objectUri` | `string` | Required. Format: `gs:///` |

### `GoogleCloudContactcenterinsightsV1mainImportIssueModelResponse`

Response from import issue model

| Property | Type | Description |
|----------|------|-------------|
| `issueModel` | `GoogleCloudContactcenterinsightsV1mainIssueModel` | The issue model that was imported. |

### `GoogleCloudContactcenterinsightsV1mainIngestConversationsMetadata`

The metadata for an IngestConversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `ingestConversationsStats` | `GoogleCloudContactcenterinsightsV1mainIngestConversationsMetadataIngestConversationsStats` | Output only. Statistics for IngestConversations operation. |
| `partialErrors` | `array<GoogleRpcStatus>` | Output only. Partial errors during ingest operation that might cause the operation output to be i... |
| `request` | `GoogleCloudContactcenterinsightsV1mainIngestConversationsRequest` | Output only. The original request for ingest. |
| `sampledConversations` | `array<string>` | Output only. Stores the conversation resources produced by ingest sampling operations. |

### `GoogleCloudContactcenterinsightsV1mainIngestConversationsMetadataIngestConversationsStats`

Statistics for IngestConversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `duplicatesSkippedCount` | `integer` | Output only. The number of objects skipped because another conversation with the same transcript ... |
| `failedIngestCount` | `integer` | Output only. The number of objects which were unable to be ingested due to errors. The errors are... |
| `processedObjectCount` | `integer` | Output only. The number of objects processed during the ingest operation. |
| `successfulIngestCount` | `integer` | Output only. The number of new conversations added during this ingest operation. |

### `GoogleCloudContactcenterinsightsV1mainIngestConversationsRequest`

The request to ingest conversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversationConfig` | `GoogleCloudContactcenterinsightsV1mainIngestConversationsRequestConversationConfig` | Configuration that applies to all conversations. |
| `gcsSource` | `GoogleCloudContactcenterinsightsV1mainIngestConversationsRequestGcsSource` | A cloud storage bucket source. Note that any previously ingested objects from the source will be ... |
| `parent` | `string` | Required. The parent resource for new conversations. |
| `redactionConfig` | `GoogleCloudContactcenterinsightsV1mainRedactionConfig` | Optional. DLP settings for transcript redaction. Optional, will default to the config specified i... |
| `sampleSize` | `integer` | Optional. If set, this fields indicates the number of objects to ingest from the Cloud Storage bu... |
| `speechConfig` | `GoogleCloudContactcenterinsightsV1mainSpeechConfig` | Optional. Default Speech-to-Text configuration. Optional, will default to the config specified in... |
| `transcriptObjectConfig` | `GoogleCloudContactcenterinsightsV1mainIngestConversationsRequestTranscriptObjectConfig` | Configuration for when `source` contains conversation transcripts. |

### `GoogleCloudContactcenterinsightsV1mainIngestConversationsRequestConversationConfig`

Configuration that applies to all conversations.

| Property | Type | Description |
|----------|------|-------------|
| `agentChannel` | `integer` | Optional. Indicates which of the channels, 1 or 2, contains the agent. Note that this must be set... |
| `agentId` | `string` | Optional. An opaque, user-specified string representing a human agent who handled all conversatio... |
| `customerChannel` | `integer` | Optional. Indicates which of the channels, 1 or 2, contains the agent. Note that this must be set... |

### `GoogleCloudContactcenterinsightsV1mainIngestConversationsRequestGcsSource`

Configuration for Cloud Storage bucket sources.

| Property | Type | Description |
|----------|------|-------------|
| `audioBucketUri` | `string` | Optional. The Cloud Storage path to the conversation audio file. Note that: [1] Audio files will ... |
| `bucketObjectType` | `string` | Optional. Specifies the type of the objects in `bucket_uri`. Avoid passing this. This is inferred... |
| `bucketUri` | `string` | Optional. The Cloud Storage bucket containing source objects. Avoid passing this. Pass this throu... |
| `customMetadataKeys` | `array<string>` | Optional. Custom keys to extract as conversation labels from metadata files in `metadata_bucket_u... |
| `metadataBucketUri` | `string` | Optional. The Cloud Storage path to the conversation metadata. Note that: [1] Metadata files are ... |
| `transcriptBucketUri` | `string` | Optional. The Cloud Storage path to the conversation transcripts. Note that: [1] Transcript files... |

### `GoogleCloudContactcenterinsightsV1mainIngestConversationsRequestTranscriptObjectConfig`

Configuration for processing transcript objects.

| Property | Type | Description |
|----------|------|-------------|
| `medium` | `string` | Required. The medium transcript objects represent. |

### `GoogleCloudContactcenterinsightsV1mainIngestConversationsResponse`

The response to an IngestConversations operation.

### `GoogleCloudContactcenterinsightsV1mainInitializeEncryptionSpecMetadata`

Metadata for initializing a location-level encryption specification.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during initializing operation that might cause the operation output to be incomplete. |
| `request` | `GoogleCloudContactcenterinsightsV1mainInitializeEncryptionSpecRequest` | Output only. The original request for initialization. |

### `GoogleCloudContactcenterinsightsV1mainInitializeEncryptionSpecRequest`

The request to initialize a location-level encryption specification.

| Property | Type | Description |
|----------|------|-------------|
| `encryptionSpec` | `GoogleCloudContactcenterinsightsV1mainEncryptionSpec` | Required. The encryption spec used for CMEK encryption. It is required that the kms key is in the... |

### `GoogleCloudContactcenterinsightsV1mainInitializeEncryptionSpecResponse`

The response to initialize a location-level encryption specification.

### `GoogleCloudContactcenterinsightsV1mainIntent`

The data for an intent. Represents a detected intent in the conversation, for example MAKES_PROMISE.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the intent. |
| `id` | `string` | The unique identifier of the intent. |

### `GoogleCloudContactcenterinsightsV1mainIntentMatchData`

The data for an intent match. Represents an intent match for a text segment in the conversation. A text segment can be part of a sentence, a complete sentence, or an utterance with multiple sentences.

| Property | Type | Description |
|----------|------|-------------|
| `intentUniqueId` | `string` | The id of the matched intent. Can be used to retrieve the corresponding intent information. |

### `GoogleCloudContactcenterinsightsV1mainInterruptionData`

The data for an interruption annotation.

### `GoogleCloudContactcenterinsightsV1mainIssue`

The issue resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which this issue was created. |
| `displayDescription` | `string` | Representative description of the issue. |
| `displayName` | `string` | The representative name for the issue. |
| `name` | `string` | Immutable. The resource name of the issue. Format: projects/{project}/locations/{location}/issueM... |
| `sampleUtterances` | `array<string>` | Output only. Resource names of the sample representative utterances that match to this issue. |
| `updateTime` | `string` | Output only. The most recent time that this issue was updated. |

### `GoogleCloudContactcenterinsightsV1mainIssueAssignment`

Information about the issue.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Immutable. Display name of the assigned issue. This field is set at time of analysis and immutabl... |
| `issue` | `string` | Resource name of the assigned issue. |
| `score` | `number` | Score indicating the likelihood of the issue assignment. currently bounded on [0,1]. |

### `GoogleCloudContactcenterinsightsV1mainIssueMatchData`

The data for an issue match annotation.

| Property | Type | Description |
|----------|------|-------------|
| `issueAssignment` | `GoogleCloudContactcenterinsightsV1mainIssueAssignment` | Information about the issue's assignment. |

### `GoogleCloudContactcenterinsightsV1mainIssueModel`

The issue model resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which this issue model was created. |
| `displayName` | `string` | The representative name for the issue model. |
| `inputDataConfig` | `GoogleCloudContactcenterinsightsV1mainIssueModelInputDataConfig` | Configs for the input data that used to create the issue model. |
| `issueCount` | `string` | Output only. Number of issues in this issue model. |
| `languageCode` | `string` | Language of the model. |
| `modelType` | `string` | Type of the model. |
| `name` | `string` | Immutable. The resource name of the issue model. Format: projects/{project}/locations/{location}/... |
| `state` | `string` | Output only. State of the model. |
| `trainingStats` | `GoogleCloudContactcenterinsightsV1mainIssueModelLabelStats` | Output only. Immutable. The issue model's label statistics on its training data. |
| `updateTime` | `string` | Output only. The most recent time at which the issue model was updated. |

### `GoogleCloudContactcenterinsightsV1mainIssueModelInputDataConfig`

Configs for the input data used to create the issue model.

| Property | Type | Description |
|----------|------|-------------|
| `filter` | `string` | A filter to reduce the conversations used for training the model to a specific subset. Refer to h... |
| `medium` | `string` | Medium of conversations used in training data. This field is being deprecated. To specify the med... |
| `trainingConversationsCount` | `string` | Output only. Number of conversations used in training. Output only. |

### `GoogleCloudContactcenterinsightsV1mainIssueModelLabelStats`

Aggregated statistics about an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `analyzedConversationsCount` | `string` | Number of conversations the issue model has analyzed at this point in time. |
| `issueStats` | `object` | Statistics on each issue. Key is the issue's resource name. |
| `unclassifiedConversationsCount` | `string` | Number of analyzed conversations for which no issue was applicable at this point in time. |

### `GoogleCloudContactcenterinsightsV1mainIssueModelLabelStatsIssueStats`

Aggregated statistics about an issue.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | Display name of the issue. |
| `issue` | `string` | Issue resource. Format: projects/{project}/locations/{location}/issueModels/{issue_model}/issues/... |
| `labeledConversationsCount` | `string` | Number of conversations attached to the issue at this point in time. |

### `GoogleCloudContactcenterinsightsV1mainIssueModelResult`

Issue Modeling result on a conversation.

| Property | Type | Description |
|----------|------|-------------|
| `issueModel` | `string` | Issue model that generates the result. Format: projects/{project}/locations/{location}/issueModel... |
| `issues` | `array<GoogleCloudContactcenterinsightsV1mainIssueAssignment>` | All the matched issues. |

### `GoogleCloudContactcenterinsightsV1mainListAllFeedbackLabelsResponse`

The response for listing all feedback labels.

| Property | Type | Description |
|----------|------|-------------|
| `feedbackLabels` | `array<GoogleCloudContactcenterinsightsV1mainFeedbackLabel>` | The feedback labels that match the request. |
| `nextPageToken` | `string` | A token, which can be sent as `page_token` to retrieve the next page. If this field is omitted, t... |

### `GoogleCloudContactcenterinsightsV1mainListFeedbackLabelsResponse`

The response for listing feedback labels.

| Property | Type | Description |
|----------|------|-------------|
| `feedbackLabels` | `array<GoogleCloudContactcenterinsightsV1mainFeedbackLabel>` | The feedback labels that match the request. |
| `nextPageToken` | `string` | The next page token. |

### `GoogleCloudContactcenterinsightsV1mainPhraseMatchData`

The data for a matched phrase matcher. Represents information identifying a phrase matcher for a given match.

| Property | Type | Description |
|----------|------|-------------|
| `displayName` | `string` | The human-readable name of the phrase matcher. |
| `phraseMatcher` | `string` | The unique identifier (the resource name) of the phrase matcher. |

### `GoogleCloudContactcenterinsightsV1mainQaAnswer`

An answer to a QaQuestion.

| Property | Type | Description |
|----------|------|-------------|
| `answerSources` | `array<GoogleCloudContactcenterinsightsV1mainQaAnswerAnswerSource>` | Lists all answer sources containing one or more answer values of a specific source type, e.g., al... |
| `answerValue` | `GoogleCloudContactcenterinsightsV1mainQaAnswerAnswerValue` | The answer value from this source. This field is populated by default, unless the question has a ... |
| `conversation` | `string` | The conversation the answer applies to. |
| `qaQuestion` | `string` | The QaQuestion answered by this answer. |
| `questionBody` | `string` | Question text. E.g., "Did the agent greet the customer?" |
| `tags` | `array<string>` | User-defined list of arbitrary tags. Matches the value from QaScorecard.ScorecardQuestion.tags. U... |

### `GoogleCloudContactcenterinsightsV1mainQaAnswerAnswerSource`

A question may have multiple answers from varying sources, one of which becomes the "main" answer above. AnswerSource represents each individual answer.

| Property | Type | Description |
|----------|------|-------------|
| `answerValue` | `GoogleCloudContactcenterinsightsV1mainQaAnswerAnswerValue` | The answer value from this source. This field is populated by default, unless the question has a ... |
| `sourceType` | `string` | What created the answer. |

### `GoogleCloudContactcenterinsightsV1mainQaAnswerAnswerValue`

Message for holding the value of a QaAnswer. QaQuestion.AnswerChoice defines the possible answer values for a question.

| Property | Type | Description |
|----------|------|-------------|
| `boolValue` | `boolean` | Boolean value. |
| `key` | `string` | A short string used as an identifier. Matches the value used in QaQuestion.AnswerChoice.key. |
| `naValue` | `boolean` | A value of "Not Applicable (N/A)". Should only ever be `true`. |
| `normalizedScore` | `number` | Output only. Normalized score of the questions. Calculated as score / potential_score. |
| `numValue` | `number` | Numerical value. |
| `potentialScore` | `number` | Output only. The maximum potential score of the question. |
| `score` | `number` | Output only. Numerical score of the answer. |
| `skipValue` | `boolean` | Output only. A value of "Skip". If provided, this field may only be set to `true`. If a question ... |
| `strValue` | `string` | String value. |

### `GoogleCloudContactcenterinsightsV1mainQaQuestionTag`

A tag is a resource which aims to categorize a set of questions across multiple scorecards, e.g., "Customer Satisfaction","Billing", etc.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time at which the question tag was created. |
| `displayName` | `string` | Required. A user-specified display name for the tag. |
| `name` | `string` | Identifier. Resource name for the QaQuestionTag Format projects/{project}/locations/{location}/qa... |
| `qaQuestionIds` | `array<string>` | Optional. The list of Scorecard Question IDs that the tag applies to. Each QaQuestionId is repres... |
| `updateTime` | `string` | Output only. The most recent time at which the question tag was updated. |

### `GoogleCloudContactcenterinsightsV1mainQaScorecardResult`

The results of scoring a single conversation against a QaScorecard. Contains a collection of QaAnswers and aggregate score.

| Property | Type | Description |
|----------|------|-------------|
| `agentId` | `string` | ID of the agent that handled the conversation. |
| `conversation` | `string` | The conversation scored by this result. |
| `createTime` | `string` | Output only. The timestamp that the revision was created. |
| `name` | `string` | Identifier. The name of the scorecard result. Format: projects/{project}/locations/{location}/qaS... |
| `normalizedScore` | `number` | The normalized score, which is the score divided by the potential score. Any manual edits are inc... |
| `potentialScore` | `number` | The maximum potential overall score of the scorecard. Any questions answered using `na_value` are... |
| `qaAnswers` | `array<GoogleCloudContactcenterinsightsV1mainQaAnswer>` | Set of QaAnswers represented in the result. |
| `qaScorecardRevision` | `string` | The QaScorecardRevision scored by this result. |
| `qaTagResults` | `array<GoogleCloudContactcenterinsightsV1mainQaScorecardResultQaTagResult>` | Collection of tags and their scores. |
| `score` | `number` | The overall numerical score of the result, incorporating any manual edits if they exist. |
| `scoreSources` | `array<GoogleCloudContactcenterinsightsV1mainQaScorecardResultScoreSource>` | List of all individual score sets. |

### `GoogleCloudContactcenterinsightsV1mainQaScorecardResultQaTagResult`

Tags and their corresponding results.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedScore` | `number` | The normalized score the tag applies to. |
| `potentialScore` | `number` | The potential score the tag applies to. |
| `score` | `number` | The score the tag applies to. |
| `tag` | `string` | The tag the score applies to. |

### `GoogleCloudContactcenterinsightsV1mainQaScorecardResultScoreSource`

A scorecard result may have multiple sets of scores from varying sources, one of which becomes the "main" answer above. A ScoreSource represents each individual set of scores.

| Property | Type | Description |
|----------|------|-------------|
| `normalizedScore` | `number` | The normalized score, which is the score divided by the potential score. |
| `potentialScore` | `number` | The maximum potential overall score of the scorecard. Any questions answered using `na_value` are... |
| `qaTagResults` | `array<GoogleCloudContactcenterinsightsV1mainQaScorecardResultQaTagResult>` | Collection of tags and their scores. |
| `score` | `number` | The overall numerical score of the result. |
| `sourceType` | `string` | What created the score. |

### `GoogleCloudContactcenterinsightsV1mainQueryMetricsMetadata`

The metadata from querying metrics.

| Property | Type | Description |
|----------|------|-------------|
| `resultIsTruncated` | `boolean` | Whether the result rows were truncated because the result row size is too large to materialize. |

### `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponse`

The response for querying metrics.

| Property | Type | Description |
|----------|------|-------------|
| `location` | `string` | Required. The location of the data. "projects/{project}/locations/{location}" |
| `macroAverageSlice` | `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSlice` | The macro average slice contains aggregated averages across all selected dimensions. i.e. if grou... |
| `slices` | `array<GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSlice>` | A slice contains a total and (if the request specified a time granularity) a time series of metri... |
| `updateTime` | `string` | The metrics last update time. |

### `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSlice`

A slice contains a total and (if the request specified a time granularity) a time series of metric values. Each slice contains a unique combination of the cardinality of dimensions from the request. For example, if the request specifies a single ISSUE dimension and it has a cardinality of 2 (i.e. the data used to compute the metrics has 2 issues in total), the response will have 2 slices: * Slice 1 -> dimensions=[Issue 1] * Slice 2 -> dimensions=[Issue 2]

| Property | Type | Description |
|----------|------|-------------|
| `dimensions` | `array<GoogleCloudContactcenterinsightsV1mainDimension>` | A unique combination of dimensions that this slice represents. |
| `timeSeries` | `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceTimeSeries` | A time series of metric values. This is only populated if the request specifies a time granularit... |
| `total` | `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPoint` | The total metric value. The interval of this data point is [starting create time, ending create t... |

### `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPoint`

A data point contains the metric values mapped to an interval.

| Property | Type | Description |
|----------|------|-------------|
| `conversationMeasure` | `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointConversationMeasure` | The measure related to conversations. |
| `dialogflowInteractionMeasure` | `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointDialogflowInteractionMeasure` | The measure related to dialogflow interactions. |
| `interval` | `GoogleTypeInterval` | The interval that this data point represents. * If this is the total data point, the interval is ... |

### `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointConversationMeasure`

The measure related to conversations.

| Property | Type | Description |
|----------|------|-------------|
| `aaSupervisorAssignedConversationsCount` | `integer` | The number of conversations that were assigned to an AA human supervisor. |
| `aaSupervisorDroppedConversationsCount` | `integer` | The number of conversations that were dropped, i.e. escalated but not assigned to an AA human sup... |
| `aaSupervisorEscalatedConversationsCount` | `integer` | The number of conversations that were escalated to an AA human supervisor for intervention. |
| `aaSupervisorMonitoredConversationsCount` | `integer` | The number of conversations scanned by the AA human supervisor. |
| `aaSupervisorTransferredToHumanAgentConvCount` | `integer` | The number of conversations transferred to a human agent. |
| `aiCoachSuggestionAgentMessageTriggerCount` | `integer` | Count of agent messages that triggered an Ai Coach Suggestion. |
| `aiCoachSuggestionAgentUsageCount` | `integer` | Count of Ai Coach Suggestion that has been used by agents. |
| `aiCoachSuggestionAgentUsageRatio` | `number` | Proportion of Ai Coach Suggestion that has been used by agents. |
| `aiCoachSuggestionCustomerMessageTriggerCount` | `integer` | Count of customer messages that triggered an Ai Coach Suggestion. |
| `aiCoachSuggestionCustomerMessageTriggerRatio` | `number` | Proportion of customer messages that triggered an Ai Coach Suggestion. |
| `aiCoachSuggestionMessageTriggerCount` | `integer` | Count of end_of_utterance trigger event messages that triggered an Ai Coach Suggestion. |
| `aiCoachSuggestionMessageTriggerRatio` | `number` | Proportion of end_of_utterance trigger event messages that triggered an Ai Coach Suggestion. |
| `averageAgentSentimentScore` | `number` | The average agent's sentiment score. |
| `averageClientSentimentScore` | `number` | The average client's sentiment score. |
| `averageCustomerSatisfactionRating` | `number` | The average customer satisfaction rating. |
| `averageDuration` | `string` | The average duration. |
| `averageQaNormalizedScore` | `number` | The average normalized QA score for a scorecard. When computing the average across a set of conve... |
| `averageQaQuestionNormalizedScore` | `number` | Average QA normalized score averaged for questions averaged across all revisions of the parent sc... |
| `averageSilencePercentage` | `number` | The average silence percentage. |
| `averageSummarizationSuggestionEditDistance` | `number` | Average edit distance of the summarization suggestions. Edit distance (also called as levenshtein... |
| `averageSummarizationSuggestionNormalizedEditDistance` | `number` | Normalized Average edit distance of the summarization suggestions. Edit distance (also called as ... |
| `averageTurnCount` | `number` | The average turn count. |
| `avgConversationClientTurnSentimentEma` | `number` | The exponential moving average of the sentiment score of client turns in the conversation. |
| `containedConversationCount` | `integer` | The number of conversations that were contained. |
| `containedConversationRatio` | `number` | The percentage of conversations that were contained. |
| `conversationAiCoachSuggestionCount` | `integer` | Count of conversations that has Ai Coach Suggestions. |
| `conversationAiCoachSuggestionRatio` | `number` | Proportion of conversations that has Ai Coach Suggestions. |
| `conversationCount` | `integer` | The conversation count. |
| `conversationSuggestedSummaryRatio` | `number` | Proportion of conversations that had a suggested summary. |
| `conversationTotalAgentMessageCount` | `integer` | The agent message count. |
| `conversationTotalCustomerMessageCount` | `integer` | The customer message count. |
| `conversationalAgentsAverageAudioInAudioOutLatency` | `number` | The average latency of conversational agents' audio in audio out latency per interaction. This is... |
| `conversationalAgentsAverageEndToEndLatency` | `number` | The average latency of conversational agents' latency per interaction. This is computed as the av... |
| `conversationalAgentsAverageLlmCallLatency` | `number` | The average latency of conversational agents' LLM call latency per interaction. This is computed ... |
| `conversationalAgentsAverageTtsLatency` | `number` | The macro average latency of conversational agents' TTS latency per interaction. This is computed... |
| `dialogflowAverageWebhookLatency` | `number` | Average latency of dialogflow webhook calls. |
| `dialogflowConversationsEscalationCount` | `number` | count of conversations that was handed off from virtual agent to human agent. |
| `dialogflowConversationsEscalationRatio` | `number` | Proportion of conversations that was handed off from virtual agent to human agent. |
| `dialogflowInteractionsNoInputRatio` | `number` | Proportion of dialogflow interactions that has empty input. |
| `dialogflowInteractionsNoMatchRatio` | `number` | Proportion of dialogflow interactions that has no intent match for the input. |
| `dialogflowWebhookFailureRatio` | `number` | Proportion of dialogflow webhook calls that failed. |
| `dialogflowWebhookTimeoutRatio` | `number` | Proportion of dialogflow webhook calls that timed out. |
| `knowledgeAssistNegativeFeedbackRatio` | `number` | Proportion of knowledge assist (Proactive Generative Knowledge Assist) queries that had negative ... |
| `knowledgeAssistPositiveFeedbackRatio` | `number` | Proportion of knowledge assist (Proactive Generative Knowledge Assist) queries that had positive ... |
| `knowledgeAssistResultCount` | `integer` | Count of knowledge assist results (Proactive Generative Knowledge Assist) shown to the user. |
| `knowledgeAssistUriClickRatio` | `number` | Proportion of knowledge assist (Proactive Generative Knowledge Assist) queries that had a URL cli... |
| `knowledgeSearchAgentQuerySourceRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries made by the agent compared t... |
| `knowledgeSearchNegativeFeedbackRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries that had negative feedback. |
| `knowledgeSearchPositiveFeedbackRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries that had positive feedback. |
| `knowledgeSearchResultCount` | `integer` | Count of knowledge search results (Generative Knowledge Assist) shown to the user. |
| `knowledgeSearchSuggestedQuerySourceRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries suggested compared to the to... |
| `knowledgeSearchUriClickRatio` | `number` | Proportion of knowledge search (Generative Knowledge Assist) queries that had a URL clicked. |
| `qaTagScores` | `array<GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointConversationMeasureQaTagScore>` | Average QA normalized score for all the tags. |
| `summarizationSuggestionEditRatio` | `number` | Proportion of summarization suggestions that were manually edited. |
| `summarizationSuggestionResultCount` | `integer` | Count of summarization suggestions results. |

### `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointConversationMeasureQaTagScore`

Average QA normalized score for the tag.

| Property | Type | Description |
|----------|------|-------------|
| `averageTagNormalizedScore` | `number` | Average tag normalized score per tag. |
| `tag` | `string` | Tag name. |

### `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointDialogflowInteractionMeasure`

The measure related to dialogflow interactions.

| Property | Type | Description |
|----------|------|-------------|
| `percentileAudioInAudioOutLatency` | `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for audio in audio out latency in milliseconds per dialogflow interaction l... |
| `percentileEndToEndLatency` | `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for end to end chat latency in milliseconds per dialogflow interaction level. |
| `percentileLlmCallLatency` | `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for LLM latency in milliseconds per dialogflow interaction level. |
| `percentileToolUseLatency` | `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for tool use latency in milliseconds per dialogflow interaction level. |
| `percentileTtsLatency` | `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointPercentileResult` | The percentile result for TTS latency in milliseconds per dialogflow interaction level. |

### `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPointPercentileResult`

The percentile result. Currently supported percentiles are 50th, 90th, and 99th.

| Property | Type | Description |
|----------|------|-------------|
| `p50` | `number` | The 50th percentile value. |
| `p90` | `number` | The 90th percentile value. |
| `p99` | `number` | The 99th percentile value. |

### `GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceTimeSeries`

A time series of metric values.

| Property | Type | Description |
|----------|------|-------------|
| `dataPoints` | `array<GoogleCloudContactcenterinsightsV1mainQueryMetricsResponseSliceDataPoint>` | The data points that make up the time series . |

### `GoogleCloudContactcenterinsightsV1mainQueryPerformanceOverviewMetadata`

The metadata for querying performance overview.

### `GoogleCloudContactcenterinsightsV1mainQueryPerformanceOverviewResponse`

The response for querying performance overview.

| Property | Type | Description |
|----------|------|-------------|
| `summaryText` | `string` | The summary text of the performance. |

### `GoogleCloudContactcenterinsightsV1mainRedactionConfig`

DLP resources used for redaction while ingesting conversations. DLP settings are applied to conversations ingested from the `UploadConversation` and `IngestConversations` endpoints, including conversation coming from CCAI Platform. They are not applied to conversations ingested from the `CreateConversation` endpoint or the Dialogflow / Agent Assist runtime integrations. When using Dialogflow / Agent Assist runtime integrations, redaction should be performed in Dialogflow / Agent Assist.

| Property | Type | Description |
|----------|------|-------------|
| `deidentifyTemplate` | `string` | The fully-qualified DLP deidentify template resource name. Format: `projects/{project}/deidentify... |
| `inspectTemplate` | `string` | The fully-qualified DLP inspect template resource name. Format: `projects/{project}/locations/{lo... |

### `GoogleCloudContactcenterinsightsV1mainRuntimeAnnotation`

An annotation that was generated during the customer and agent interaction.

| Property | Type | Description |
|----------|------|-------------|
| `annotationId` | `string` | The unique identifier of the annotation. Format: projects/{project}/locations/{location}/conversa... |
| `answerFeedback` | `GoogleCloudContactcenterinsightsV1mainAnswerFeedback` | The feedback that the customer has about the answer in `data`. |
| `articleSuggestion` | `GoogleCloudContactcenterinsightsV1mainArticleSuggestionData` | Agent Assist Article Suggestion data. |
| `conversationSummarizationSuggestion` | `GoogleCloudContactcenterinsightsV1mainConversationSummarizationSuggestionData` | Conversation summarization suggestion data. |
| `createTime` | `string` | The time at which this annotation was created. |
| `dialogflowInteraction` | `GoogleCloudContactcenterinsightsV1mainDialogflowInteractionData` | Dialogflow interaction data. |
| `endBoundary` | `GoogleCloudContactcenterinsightsV1mainAnnotationBoundary` | The boundary in the conversation where the annotation ends, inclusive. |
| `faqAnswer` | `GoogleCloudContactcenterinsightsV1mainFaqAnswerData` | Agent Assist FAQ answer data. |
| `smartComposeSuggestion` | `GoogleCloudContactcenterinsightsV1mainSmartComposeSuggestionData` | Agent Assist Smart Compose suggestion data. |
| `smartReply` | `GoogleCloudContactcenterinsightsV1mainSmartReplyData` | Agent Assist Smart Reply data. |
| `startBoundary` | `GoogleCloudContactcenterinsightsV1mainAnnotationBoundary` | The boundary in the conversation where the annotation starts, inclusive. |
| `userInput` | `GoogleCloudContactcenterinsightsV1mainRuntimeAnnotationUserInput` | Explicit input used for generating the answer |

### `GoogleCloudContactcenterinsightsV1mainRuntimeAnnotationUserInput`

Explicit input used for generating the answer

| Property | Type | Description |
|----------|------|-------------|
| `generatorName` | `string` | The resource name of associated generator. Format: `projects//locations//generators/` |
| `query` | `string` | Query text. Article Search uses this to store the input query used to generate the search results. |
| `querySource` | `string` | Query source for the answer. |

### `GoogleCloudContactcenterinsightsV1mainSampleConversationsMetadata`

The metadata for an SampleConversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `partialErrors` | `array<GoogleRpcStatus>` | Output only. Partial errors during sample conversations operation that might cause the operation ... |
| `request` | `GoogleCloudContactcenterinsightsV1mainSampleConversationsRequest` | Output only. The original request for sample conversations to dataset. |
| `sampleConversationsStats` | `GoogleCloudContactcenterinsightsV1mainSampleConversationsMetadataSampleConversationsStats` | Output only. Statistics for SampleConversations operation. |

### `GoogleCloudContactcenterinsightsV1mainSampleConversationsMetadataSampleConversationsStats`

Statistics for SampleConversations operation.

| Property | Type | Description |
|----------|------|-------------|
| `failedSampleCount` | `integer` | Output only. The number of objects which were unable to be sampled due to errors. The errors are ... |
| `successfulSampleCount` | `integer` | Output only. The number of new conversations added during this sample operation. |

### `GoogleCloudContactcenterinsightsV1mainSampleConversationsRequest`

The request to sample conversations to a dataset.

| Property | Type | Description |
|----------|------|-------------|
| `destinationDataset` | `GoogleCloudContactcenterinsightsV1mainDataset` | The dataset resource to copy the sampled conversations to. |
| `parent` | `string` | Required. The parent resource of the dataset. |
| `sampleRule` | `GoogleCloudContactcenterinsightsV1mainSampleRule` | Optional. The sample rule used for sampling conversations. |

### `GoogleCloudContactcenterinsightsV1mainSampleConversationsResponse`

The response to an SampleConversations operation.

### `GoogleCloudContactcenterinsightsV1mainSampleRule`

Message for sampling conversations.

| Property | Type | Description |
|----------|------|-------------|
| `conversationFilter` | `string` | To specify the filter for the conversions that should apply this sample rule. An empty filter mea... |
| `dimension` | `string` | Optional. Group by dimension to sample the conversation. If no dimension is provided, the samplin... |
| `samplePercentage` | `number` | Percentage of conversations that we should sample based on the dimension between [0, 100]. |
| `sampleRow` | `string` | Number of the conversations that we should sample based on the dimension. |

### `GoogleCloudContactcenterinsightsV1mainSentimentData`

The data for a sentiment annotation.

| Property | Type | Description |
|----------|------|-------------|
| `magnitude` | `number` | A non-negative number from 0 to infinity which represents the absolute magnitude of sentiment reg... |
| `score` | `number` | The sentiment score between -1.0 (negative) and 1.0 (positive). |

### `GoogleCloudContactcenterinsightsV1mainSilenceData`

The data for a silence annotation.

### `GoogleCloudContactcenterinsightsV1mainSmartComposeSuggestionData`

Agent Assist Smart Compose suggestion data.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceScore` | `number` | The system's confidence score that this suggestion is a good match for this conversation, ranging... |
| `metadata` | `object` | Map that contains metadata about the Smart Compose suggestion and the document from which it orig... |
| `queryRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `suggestion` | `string` | The content of the suggestion. |

### `GoogleCloudContactcenterinsightsV1mainSmartReplyData`

Agent Assist Smart Reply data.

| Property | Type | Description |
|----------|------|-------------|
| `confidenceScore` | `number` | The system's confidence score that this reply is a good match for this conversation, ranging from... |
| `metadata` | `object` | Map that contains metadata about the Smart Reply and the document from which it originates. |
| `queryRecord` | `string` | The name of the answer record. Format: projects/{project}/locations/{location}/answerRecords/{ans... |
| `reply` | `string` | The content of the reply. |

### `GoogleCloudContactcenterinsightsV1mainSpeechConfig`

Speech-to-Text configuration. Speech-to-Text settings are applied to conversations ingested from the `UploadConversation` and `IngestConversations` endpoints, including conversation coming from CCAI Platform. They are not applied to conversations ingested from the `CreateConversation` endpoint.

| Property | Type | Description |
|----------|------|-------------|
| `disableWordTimeOffsets` | `boolean` | Whether to disable word time offsets. If true, the `enable_word_time_offsets` field in the recogn... |
| `speechRecognizer` | `string` | The fully-qualified Speech Recognizer resource name. Format: `projects/{project_id}/locations/{lo... |

### `GoogleCloudContactcenterinsightsV1mainTestCorrelationConfigMetadata`

Metadata for testing correlation config.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `dataset` | `string` | The dataset used for sampling conversations. |
| `stats` | `GoogleCloudContactcenterinsightsV1mainTestCorrelationConfigMetadataFullConversationCorrelationStats` | The statistics for the operation. |

### `GoogleCloudContactcenterinsightsV1mainTestCorrelationConfigMetadataFullConversationCorrelationStats`

Statistics for TestCorrelationConfig operation.

| Property | Type | Description |
|----------|------|-------------|
| `conversationCorrelationErrors` | `array<GoogleCloudContactcenterinsightsV1mainTestCorrelationConfigMetadataFullConversationCorrelationStatsConversationCorrelationError>` | A list of errors that occurred during correlation, one for each conversation that failed. |
| `correlatedConversationsCount` | `integer` | The number of conversations correlated. |
| `failedConversationsCount` | `integer` | The number of conversations that failed correlation. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during test correlation config operation that might cause the operation output to ... |
| `sampledConversationsCount` | `integer` | The number of conversations sampled. |

### `GoogleCloudContactcenterinsightsV1mainTestCorrelationConfigMetadataFullConversationCorrelationStatsConversationCorrelationError`

An error that occurred during correlation for a specific conversation.

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `string` | The conversation resource name that had an error during correlation. |
| `status` | `GoogleRpcStatus` | The error status. |

### `GoogleCloudContactcenterinsightsV1mainTestCorrelationConfigResponse`

The response of testing correlation config.

| Property | Type | Description |
|----------|------|-------------|
| `detailedResults` | `GoogleCloudContactcenterinsightsV1mainTestCorrelationConfigResponseDetailedCorrelationResults` | Results for the DETAILED_SYNC execution mode. |
| `partialErrors` | `array<GoogleRpcStatus>` | Partial errors during test correlation config operation that might cause the operation output to ... |

### `GoogleCloudContactcenterinsightsV1mainTestCorrelationConfigResponseDetailedCorrelationResults`

Wrapper for detailed, step-by-step results.

| Property | Type | Description |
|----------|------|-------------|
| `constraintResults` | `array<GoogleCloudContactcenterinsightsV1mainConstraintEvaluationResult>` | A list of constraint evaluation results for each pair of conversations. |
| `joinKeyResults` | `array<GoogleCloudContactcenterinsightsV1mainConversationCorrelationResult>` | A list of join key correlation results for each conversation tested. |

### `GoogleCloudContactcenterinsightsV1mainUndeployIssueModelMetadata`

Metadata for undeploying an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1mainUndeployIssueModelRequest` | The original request for undeployment. |

### `GoogleCloudContactcenterinsightsV1mainUndeployIssueModelRequest`

The request to undeploy an issue model.

| Property | Type | Description |
|----------|------|-------------|
| `name` | `string` | Required. The issue model to undeploy. |

### `GoogleCloudContactcenterinsightsV1mainUndeployIssueModelResponse`

The response to undeploy an issue model.

### `GoogleCloudContactcenterinsightsV1mainUpdateQaQuestionTagMetadata`

The metadata for updating a QaQuestionTag Resource.

| Property | Type | Description |
|----------|------|-------------|
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1mainUpdateQaQuestionTagRequest` | Output only. The original request. |

### `GoogleCloudContactcenterinsightsV1mainUpdateQaQuestionTagRequest`

The request for updating a QaQuestionTag.

| Property | Type | Description |
|----------|------|-------------|
| `qaQuestionTag` | `GoogleCloudContactcenterinsightsV1mainQaQuestionTag` | Required. The QaQuestionTag to update. |
| `updateMask` | `string` | Optional. The list of fields to be updated. All possible fields can be updated by passing `*`, or... |

### `GoogleCloudContactcenterinsightsV1mainUploadConversationMetadata`

The metadata for an `UploadConversation` operation.

| Property | Type | Description |
|----------|------|-------------|
| `analysisOperation` | `string` | Output only. The operation name for a successfully created analysis operation, if any. |
| `appliedRedactionConfig` | `GoogleCloudContactcenterinsightsV1mainRedactionConfig` | Output only. The redaction config applied to the uploaded conversation. |
| `createTime` | `string` | Output only. The time the operation was created. |
| `endTime` | `string` | Output only. The time the operation finished running. |
| `request` | `GoogleCloudContactcenterinsightsV1mainUploadConversationRequest` | Output only. The original request. |

### `GoogleCloudContactcenterinsightsV1mainUploadConversationRequest`

Request to upload a conversation.

| Property | Type | Description |
|----------|------|-------------|
| `conversation` | `GoogleCloudContactcenterinsightsV1mainConversation` | Required. The conversation resource to create. |
| `conversationId` | `string` | Optional. A unique ID for the new conversation. This ID will become the final component of the co... |
| `parent` | `string` | Required. The parent resource of the conversation. |
| `redactionConfig` | `GoogleCloudContactcenterinsightsV1mainRedactionConfig` | Optional. DLP settings for transcript redaction. Will default to the config specified in Settings. |
| `speechConfig` | `GoogleCloudContactcenterinsightsV1mainSpeechConfig` | Optional. Speech-to-Text configuration. Will default to the config specified in Settings. |

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
| `condition` | `GoogleTypeExpr` | The condition that is associated with this binding. If the condition evaluates to `true`, then th... |
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

### `GoogleLongrunningListOperationsResponse`

The response message for Operations.ListOperations.

| Property | Type | Description |
|----------|------|-------------|
| `nextPageToken` | `string` | The standard List next-page token. |
| `operations` | `array<GoogleLongrunningOperation>` | A list of operations that matches the specified filter in the request. |
| `unreachable` | `array<string>` | Unordered list. Unreachable resources. Populated when the request sets `ListOperationsRequest.ret... |

### `GoogleLongrunningOperation`

This resource represents a long-running operation that is the result of a network API call.

| Property | Type | Description |
|----------|------|-------------|
| `done` | `boolean` | If the value is `false`, it means the operation is still in progress. If `true`, the operation is... |
| `error` | `GoogleRpcStatus` | The error result of the operation in case of failure or cancellation. |
| `metadata` | `object` | Service-specific metadata associated with the operation. It typically contains progress informati... |
| `name` | `string` | The server-assigned name, which is only unique within the same service that originally returns it... |
| `response` | `object` | The normal, successful response of the operation. If the original method returns no data on succe... |

### `GoogleProtobufEmpty`

A generic empty message that you can re-use to avoid defining duplicated empty messages in your APIs. A typical example is to use it as the request or the response type of an API method. For instance: service Foo { rpc Bar(google.protobuf.Empty) returns (google.protobuf.Empty); }

### `GoogleRpcStatus`

The `Status` type defines a logical error model that is suitable for different programming environments, including REST APIs and RPC APIs. It is used by [gRPC](https://github.com/grpc). Each `Status` message contains three pieces of data: error code, error message, and error details. You can find out more about this error model and how to work with it in the [API Design Guide](https://cloud.google.com/apis/design/errors).

| Property | Type | Description |
|----------|------|-------------|
| `code` | `integer` | The status code, which should be an enum value of google.rpc.Code. |
| `details` | `array<object>` | A list of messages that carry the error details. There is a common set of message types for APIs ... |
| `message` | `string` | A developer-facing error message, which should be in English. Any user-facing error message shoul... |

### `GoogleTypeExpr`

Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language. The syntax and semantics of CEL are documented at https://github.com/google/cel-spec. Example (Comparison): title: "Summary size limit" description: "Determines if a summary is less than 100 chars" expression: "document.summary.size() < 100" Example (Equality): title: "Requestor is owner" description: "Determines if requestor is the document owner" expression: "document.owner == request.auth.claims.email" Example (Logic): title: "Public documents" description: "Determine whether the document should be publicly visible" expression: "document.type != 'private' && document.type != 'internal'" Example (Data Manipulation): title: "Notification string" description: "Create a notification string with a timestamp." expression: "'New message received at ' + string(document.create_time)" The exact variables and functions that may be referenced within an expression are determined by the service that evaluates it. See the service documentation for additional information.

| Property | Type | Description |
|----------|------|-------------|
| `description` | `string` | Optional. Description of the expression. This is a longer text which describes the expression, e.... |
| `expression` | `string` | Textual representation of an expression in Common Expression Language syntax. |
| `location` | `string` | Optional. String indicating the location of the expression for error reporting, e.g. a file name ... |
| `title` | `string` | Optional. Title for the expression, i.e. a short string describing its purpose. This can be used ... |

### `GoogleTypeInterval`

Represents a time interval, encoded as a Timestamp start (inclusive) and a Timestamp end (exclusive). The start must be less than or equal to the end. When the start equals the end, the interval is empty (matches no time). When both start and end are unspecified, the interval matches any time.

| Property | Type | Description |
|----------|------|-------------|
| `endTime` | `string` | Optional. Exclusive end of the interval. If specified, a Timestamp matching this interval will ha... |
| `startTime` | `string` | Optional. Inclusive start of the interval. If specified, a Timestamp matching this interval will ... |

