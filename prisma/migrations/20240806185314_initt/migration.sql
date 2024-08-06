-- CreateTable
CREATE TABLE "users" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "username" TEXT NOT NULL,
    "name" TEXT,
    "password" TEXT,
    "email" TEXT,
    "emailVerified" TIMESTAMP(3),
    "image" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "users_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "accounts" (
    "userId" UUID NOT NULL,
    "type" TEXT NOT NULL,
    "provider" TEXT NOT NULL,
    "providerAccountId" TEXT NOT NULL,
    "refresh_token" TEXT,
    "access_token" TEXT,
    "expires_at" INTEGER,
    "token_type" TEXT,
    "scope" TEXT,
    "id_token" TEXT,
    "session_state" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "accounts_pkey" PRIMARY KEY ("provider","providerAccountId")
);

-- CreateTable
CREATE TABLE "sessions" (
    "sessionToken" TEXT NOT NULL,
    "userId" UUID NOT NULL,
    "expiresAt" TIMESTAMP(3) NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL
);

-- CreateTable
CREATE TABLE "verificationtokens" (
    "identifier" TEXT NOT NULL,
    "token" TEXT NOT NULL,
    "expires" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "verificationtokens_pkey" PRIMARY KEY ("identifier","token")
);

-- CreateTable
CREATE TABLE "authenticator" (
    "credentialID" TEXT NOT NULL,
    "userId" UUID NOT NULL,
    "providerAccountId" TEXT NOT NULL,
    "credentialPublicKey" TEXT NOT NULL,
    "counter" INTEGER NOT NULL,
    "credentialDeviceType" TEXT NOT NULL,
    "credentialBackedUp" BOOLEAN NOT NULL,
    "transports" TEXT,

    CONSTRAINT "authenticator_pkey" PRIMARY KEY ("userId","credentialID")
);

-- CreateTable
CREATE TABLE "appointment" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "appointmentTypeId" UUID NOT NULL,
    "patientId" UUID NOT NULL,
    "locationId" UUID NOT NULL,
    "providerId" UUID NOT NULL,
    "startDatetime" TIMESTAMP(3) NOT NULL,
    "endDatetime" TIMESTAMP(3) NOT NULL,
    "voided" BOOLEAN NOT NULL DEFAULT false,
    "voidedBy" TEXT NOT NULL,
    "dateVoided" TIMESTAMP(3) NOT NULL,
    "voidReason" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "appointment_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "appointment_type" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "duration" INTEGER NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "appointment_type_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "location" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "address1" TEXT NOT NULL,
    "address2" TEXT NOT NULL,
    "city" TEXT NOT NULL,
    "stateProvince" TEXT NOT NULL,
    "country" TEXT NOT NULL,
    "postalCode" TEXT NOT NULL,
    "latitude" DOUBLE PRECISION NOT NULL,
    "longitude" DOUBLE PRECISION NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "location_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "patient" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "givenName" TEXT NOT NULL,
    "middleName" TEXT NOT NULL,
    "familyName" TEXT NOT NULL,
    "gender" TEXT NOT NULL,
    "birthdate" TIMESTAMP(3) NOT NULL,
    "dead" BOOLEAN NOT NULL DEFAULT false,
    "deathDate" TIMESTAMP(3) NOT NULL,
    "causeOfDeath" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "patient_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "provider" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "identifier" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "voided" BOOLEAN NOT NULL DEFAULT false,
    "voidedBy" TEXT NOT NULL,
    "dateVoided" TIMESTAMP(3) NOT NULL,
    "voidReason" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "provider_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "form" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "version" TEXT NOT NULL,
    "retired" BOOLEAN NOT NULL DEFAULT false,
    "retiredBy" TEXT NOT NULL,
    "dateRetired" TIMESTAMP(3) NOT NULL,
    "retiredReason" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,
    "fieldId" UUID,

    CONSTRAINT "form_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "form_encounter" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "formId" UUID NOT NULL,
    "encounterId" UUID NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "form_encounter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "form_resource" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "formId" UUID NOT NULL,
    "resourceId" UUID NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "form_resource_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "form_submission" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "formId" UUID NOT NULL,
    "encounterId" UUID NOT NULL,
    "submissionDate" TIMESTAMP(3) NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "form_submission_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "field" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "fieldType" TEXT NOT NULL,
    "conceptId" UUID NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "field_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "field_answer" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "formSubmissionId" UUID NOT NULL,
    "fieldId" UUID NOT NULL,
    "value" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "field_answer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "field_option" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "fieldId" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "field_option_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "encounter" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "encounterTypeId" UUID NOT NULL,
    "patientId" UUID NOT NULL,
    "locationId" UUID NOT NULL,
    "formId" UUID NOT NULL,
    "providerId" UUID NOT NULL,
    "startDatetime" TIMESTAMP(3) NOT NULL,
    "endDatetime" TIMESTAMP(3) NOT NULL,
    "voided" BOOLEAN NOT NULL DEFAULT false,
    "voidedBy" TEXT NOT NULL,
    "dateVoided" TIMESTAMP(3) NOT NULL,
    "voidReason" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "encounter_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "encounter_type" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "encounter_type_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "obs" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "conceptId" UUID NOT NULL,
    "encounterId" UUID NOT NULL,
    "obsDatetime" TIMESTAMP(3) NOT NULL,
    "valueDatetime" TIMESTAMP(3) NOT NULL,
    "valueNumeric" DOUBLE PRECISION NOT NULL,
    "valueText" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "obs_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "conceptId" UUID NOT NULL,
    "encounterId" UUID NOT NULL,
    "orderDatetime" TIMESTAMP(3) NOT NULL,
    "instructions" TEXT NOT NULL,
    "dosage" TEXT NOT NULL,
    "route" TEXT NOT NULL,
    "frequency" TEXT NOT NULL,
    "asNeeded" BOOLEAN NOT NULL DEFAULT false,
    "prn" BOOLEAN NOT NULL DEFAULT false,
    "quantity" INTEGER NOT NULL,
    "units" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,
    "orderFrequencyId" UUID,
    "orderRouteId" UUID,
    "orderTypeId" UUID,
    "orderUnitId" UUID,

    CONSTRAINT "order_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_frequency" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "order_frequency_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_route" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "order_route_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_type" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "order_type_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "order_unit" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "order_unit_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "concept" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "dataType" TEXT NOT NULL,
    "class" TEXT NOT NULL,
    "isRetired" BOOLEAN NOT NULL DEFAULT false,
    "retiredBy" TEXT NOT NULL,
    "dateRetired" TIMESTAMP(3) NOT NULL,
    "retiredReason" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,
    "conceptClassId" UUID,
    "conceptDatatypeId" UUID,
    "conceptMapId" UUID,
    "conceptSetId" UUID,
    "conceptSourceId" UUID,

    CONSTRAINT "concept_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "concept_answer" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "conceptId" UUID NOT NULL,
    "answerConceptId" UUID NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "concept_answer_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "concept_class" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "concept_class_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "concept_data_type" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "concept_data_type_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "concept_map" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "concept_map_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "concept_name" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "conceptId" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "locale" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "concept_name_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "concept_numeric" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "conceptId" UUID NOT NULL,
    "hiAbsolute" DOUBLE PRECISION NOT NULL,
    "hiCritical" DOUBLE PRECISION NOT NULL,
    "hiNormal" DOUBLE PRECISION NOT NULL,
    "lowAbsolute" DOUBLE PRECISION NOT NULL,
    "lowCritical" DOUBLE PRECISION NOT NULL,
    "lowNormal" DOUBLE PRECISION NOT NULL,
    "units" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "concept_numeric_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "concept_proposal" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "conceptId" UUID NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "concept_proposal_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "concept_set" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "concept_set_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "concept_source" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "concept_source_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "concept_word" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "conceptId" UUID NOT NULL,
    "word" TEXT NOT NULL,
    "locale" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "concept_word_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "resource" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "uuid" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "creator" TEXT NOT NULL,
    "dateCreated" TIMESTAMP(3) NOT NULL,
    "lastChangedBy" TEXT NOT NULL,
    "lastChangedDate" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "resource_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "blog_post" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "title" TEXT NOT NULL,
    "content" TEXT NOT NULL,
    "context" JSONB NOT NULL,
    "authorId" UUID NOT NULL,
    "spaceTimeCoordinatesId" UUID NOT NULL,

    CONSTRAINT "blog_post_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "blog_post_tag" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "name" TEXT NOT NULL,
    "descriptor" TEXT,

    CONSTRAINT "blog_post_tag_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "blog_post_tag_arrow" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "postId" UUID NOT NULL,
    "tagId" UUID NOT NULL,

    CONSTRAINT "blog_post_tag_arrow_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "blog_post_author" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "name" TEXT NOT NULL,

    CONSTRAINT "blog_post_author_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "space_time_coordinates" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "latitude" DOUBLE PRECISION NOT NULL,
    "longitude" DOUBLE PRECISION NOT NULL,
    "startTime" DOUBLE PRECISION NOT NULL,
    "pauseTime" DOUBLE PRECISION,
    "stopTime" DOUBLE PRECISION NOT NULL,
    "timezone" TEXT NOT NULL,
    "blogPostId" UUID NOT NULL,

    CONSTRAINT "space_time_coordinates_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BudgetEntry" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "serviceId" UUID NOT NULL,
    "cost" DOUBLE PRECISION NOT NULL,
    "discount" DOUBLE PRECISION NOT NULL,
    "promotion" DOUBLE PRECISION NOT NULL,
    "subtotal" DOUBLE PRECISION NOT NULL,
    "percentChange" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "budgetId" UUID NOT NULL,

    CONSTRAINT "BudgetEntry_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Service" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "description" TEXT NOT NULL,
    "category" TEXT NOT NULL,
    "metadata" JSONB NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Service_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Budget" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "fiscalYear" INTEGER NOT NULL,
    "reportId" UUID,

    CONSTRAINT "Budget_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Report" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "budgetId" UUID NOT NULL,
    "totalCost" DOUBLE PRECISION NOT NULL,
    "totalDiscount" DOUBLE PRECISION NOT NULL,
    "totalPromotion" DOUBLE PRECISION NOT NULL,
    "totalSubtotal" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Report_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BudgetUser" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "BudgetUser_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BudgetBudgetUser" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "userId" UUID NOT NULL,
    "budgetId" UUID NOT NULL,
    "role" TEXT NOT NULL,
    "ability" TEXT NOT NULL,
    "category" TEXT NOT NULL,

    CONSTRAINT "BudgetBudgetUser_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "BudEvent" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "type" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "categoryList" TEXT[],
    "metadata" JSONB NOT NULL,
    "budUserId" UUID NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "BudEvent_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "users_username_key" ON "users"("username");

-- CreateIndex
CREATE UNIQUE INDEX "users_email_key" ON "users"("email");

-- CreateIndex
CREATE UNIQUE INDEX "sessions_sessionToken_key" ON "sessions"("sessionToken");

-- CreateIndex
CREATE UNIQUE INDEX "authenticator_credentialID_key" ON "authenticator"("credentialID");

-- CreateIndex
CREATE UNIQUE INDEX "appointment_uuid_key" ON "appointment"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "appointment_patientId_locationId_providerId_key" ON "appointment"("patientId", "locationId", "providerId");

-- CreateIndex
CREATE UNIQUE INDEX "appointment_type_uuid_key" ON "appointment_type"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "location_uuid_key" ON "location"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "patient_uuid_key" ON "patient"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "provider_uuid_key" ON "provider"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "form_uuid_key" ON "form"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "form_encounter_uuid_key" ON "form_encounter"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "form_resource_uuid_key" ON "form_resource"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "form_submission_uuid_key" ON "form_submission"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "field_uuid_key" ON "field"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "field_answer_uuid_key" ON "field_answer"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "field_option_uuid_key" ON "field_option"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "encounter_uuid_key" ON "encounter"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "encounter_type_uuid_key" ON "encounter_type"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "obs_uuid_key" ON "obs"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "order_uuid_key" ON "order"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "order_frequency_uuid_key" ON "order_frequency"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "order_route_uuid_key" ON "order_route"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "order_type_uuid_key" ON "order_type"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "order_unit_uuid_key" ON "order_unit"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "concept_uuid_key" ON "concept"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "concept_answer_uuid_key" ON "concept_answer"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "concept_class_uuid_key" ON "concept_class"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "concept_data_type_uuid_key" ON "concept_data_type"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "concept_map_uuid_key" ON "concept_map"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "concept_name_uuid_key" ON "concept_name"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "concept_numeric_uuid_key" ON "concept_numeric"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "concept_proposal_uuid_key" ON "concept_proposal"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "concept_set_uuid_key" ON "concept_set"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "concept_source_uuid_key" ON "concept_source"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "concept_word_uuid_key" ON "concept_word"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "resource_uuid_key" ON "resource"("uuid");

-- CreateIndex
CREATE UNIQUE INDEX "blog_post_spaceTimeCoordinatesId_key" ON "blog_post"("spaceTimeCoordinatesId");

-- CreateIndex
CREATE UNIQUE INDEX "blog_post_tag_arrow_postId_tagId_key" ON "blog_post_tag_arrow"("postId", "tagId");

-- CreateIndex
CREATE UNIQUE INDEX "Report_budgetId_key" ON "Report"("budgetId");

-- CreateIndex
CREATE UNIQUE INDEX "BudgetUser_email_key" ON "BudgetUser"("email");

-- CreateIndex
CREATE UNIQUE INDEX "BudgetBudgetUser_userId_budgetId_key" ON "BudgetBudgetUser"("userId", "budgetId");

-- AddForeignKey
ALTER TABLE "accounts" ADD CONSTRAINT "accounts_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "sessions" ADD CONSTRAINT "sessions_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "authenticator" ADD CONSTRAINT "authenticator_userId_fkey" FOREIGN KEY ("userId") REFERENCES "users"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "appointment" ADD CONSTRAINT "appointment_appointmentTypeId_fkey" FOREIGN KEY ("appointmentTypeId") REFERENCES "appointment_type"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "appointment" ADD CONSTRAINT "appointment_locationId_fkey" FOREIGN KEY ("locationId") REFERENCES "location"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "appointment" ADD CONSTRAINT "appointment_patientId_fkey" FOREIGN KEY ("patientId") REFERENCES "patient"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "appointment" ADD CONSTRAINT "appointment_providerId_fkey" FOREIGN KEY ("providerId") REFERENCES "provider"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "form" ADD CONSTRAINT "form_fieldId_fkey" FOREIGN KEY ("fieldId") REFERENCES "field"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "form_encounter" ADD CONSTRAINT "form_encounter_encounterId_fkey" FOREIGN KEY ("encounterId") REFERENCES "encounter"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "form_encounter" ADD CONSTRAINT "form_encounter_formId_fkey" FOREIGN KEY ("formId") REFERENCES "form"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "form_resource" ADD CONSTRAINT "form_resource_formId_fkey" FOREIGN KEY ("formId") REFERENCES "form"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "form_resource" ADD CONSTRAINT "form_resource_resourceId_fkey" FOREIGN KEY ("resourceId") REFERENCES "resource"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "form_submission" ADD CONSTRAINT "form_submission_encounterId_fkey" FOREIGN KEY ("encounterId") REFERENCES "encounter"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "form_submission" ADD CONSTRAINT "form_submission_formId_fkey" FOREIGN KEY ("formId") REFERENCES "form"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "field" ADD CONSTRAINT "field_conceptId_fkey" FOREIGN KEY ("conceptId") REFERENCES "concept"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "field_answer" ADD CONSTRAINT "field_answer_fieldId_fkey" FOREIGN KEY ("fieldId") REFERENCES "field"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "field_answer" ADD CONSTRAINT "field_answer_formSubmissionId_fkey" FOREIGN KEY ("formSubmissionId") REFERENCES "form_submission"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "field_option" ADD CONSTRAINT "field_option_fieldId_fkey" FOREIGN KEY ("fieldId") REFERENCES "field"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "encounter" ADD CONSTRAINT "encounter_encounterTypeId_fkey" FOREIGN KEY ("encounterTypeId") REFERENCES "encounter_type"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "encounter" ADD CONSTRAINT "encounter_formId_fkey" FOREIGN KEY ("formId") REFERENCES "form"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "encounter" ADD CONSTRAINT "encounter_locationId_fkey" FOREIGN KEY ("locationId") REFERENCES "location"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "encounter" ADD CONSTRAINT "encounter_patientId_fkey" FOREIGN KEY ("patientId") REFERENCES "patient"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "encounter" ADD CONSTRAINT "encounter_providerId_fkey" FOREIGN KEY ("providerId") REFERENCES "provider"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "obs" ADD CONSTRAINT "obs_conceptId_fkey" FOREIGN KEY ("conceptId") REFERENCES "concept"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "obs" ADD CONSTRAINT "obs_encounterId_fkey" FOREIGN KEY ("encounterId") REFERENCES "encounter"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "order" ADD CONSTRAINT "order_conceptId_fkey" FOREIGN KEY ("conceptId") REFERENCES "concept"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "order" ADD CONSTRAINT "order_encounterId_fkey" FOREIGN KEY ("encounterId") REFERENCES "encounter"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "order" ADD CONSTRAINT "order_orderFrequencyId_fkey" FOREIGN KEY ("orderFrequencyId") REFERENCES "order_frequency"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "order" ADD CONSTRAINT "order_orderRouteId_fkey" FOREIGN KEY ("orderRouteId") REFERENCES "order_route"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "order" ADD CONSTRAINT "order_orderTypeId_fkey" FOREIGN KEY ("orderTypeId") REFERENCES "order_type"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "order" ADD CONSTRAINT "order_orderUnitId_fkey" FOREIGN KEY ("orderUnitId") REFERENCES "order_unit"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "concept" ADD CONSTRAINT "concept_conceptClassId_fkey" FOREIGN KEY ("conceptClassId") REFERENCES "concept_class"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "concept" ADD CONSTRAINT "concept_conceptDatatypeId_fkey" FOREIGN KEY ("conceptDatatypeId") REFERENCES "concept_data_type"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "concept" ADD CONSTRAINT "concept_conceptMapId_fkey" FOREIGN KEY ("conceptMapId") REFERENCES "concept_map"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "concept" ADD CONSTRAINT "concept_conceptSetId_fkey" FOREIGN KEY ("conceptSetId") REFERENCES "concept_set"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "concept" ADD CONSTRAINT "concept_conceptSourceId_fkey" FOREIGN KEY ("conceptSourceId") REFERENCES "concept_source"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "concept_answer" ADD CONSTRAINT "concept_answer_answerConceptId_fkey" FOREIGN KEY ("answerConceptId") REFERENCES "concept"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "concept_answer" ADD CONSTRAINT "concept_answer_conceptId_fkey" FOREIGN KEY ("conceptId") REFERENCES "concept"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "concept_name" ADD CONSTRAINT "concept_name_conceptId_fkey" FOREIGN KEY ("conceptId") REFERENCES "concept"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "concept_numeric" ADD CONSTRAINT "concept_numeric_conceptId_fkey" FOREIGN KEY ("conceptId") REFERENCES "concept"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "concept_proposal" ADD CONSTRAINT "concept_proposal_conceptId_fkey" FOREIGN KEY ("conceptId") REFERENCES "concept"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "concept_word" ADD CONSTRAINT "concept_word_conceptId_fkey" FOREIGN KEY ("conceptId") REFERENCES "concept"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "blog_post" ADD CONSTRAINT "blog_post_authorId_fkey" FOREIGN KEY ("authorId") REFERENCES "blog_post_author"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "blog_post" ADD CONSTRAINT "blog_post_spaceTimeCoordinatesId_fkey" FOREIGN KEY ("spaceTimeCoordinatesId") REFERENCES "space_time_coordinates"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "blog_post_tag_arrow" ADD CONSTRAINT "blog_post_tag_arrow_postId_fkey" FOREIGN KEY ("postId") REFERENCES "blog_post"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "blog_post_tag_arrow" ADD CONSTRAINT "blog_post_tag_arrow_tagId_fkey" FOREIGN KEY ("tagId") REFERENCES "blog_post_tag"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BudgetEntry" ADD CONSTRAINT "BudgetEntry_budgetId_fkey" FOREIGN KEY ("budgetId") REFERENCES "Budget"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BudgetEntry" ADD CONSTRAINT "BudgetEntry_serviceId_fkey" FOREIGN KEY ("serviceId") REFERENCES "Service"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Report" ADD CONSTRAINT "Report_budgetId_fkey" FOREIGN KEY ("budgetId") REFERENCES "Budget"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BudgetBudgetUser" ADD CONSTRAINT "BudgetBudgetUser_budgetId_fkey" FOREIGN KEY ("budgetId") REFERENCES "Budget"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BudgetBudgetUser" ADD CONSTRAINT "BudgetBudgetUser_userId_fkey" FOREIGN KEY ("userId") REFERENCES "BudgetUser"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "BudEvent" ADD CONSTRAINT "BudEvent_budUserId_fkey" FOREIGN KEY ("budUserId") REFERENCES "BudgetUser"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
