/*
  Warnings:

  - The primary key for the `BudEvent` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `BudEvent` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Budget` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `Budget` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `reportId` column on the `Budget` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `BudgetBudgetUser` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The primary key for the `BudgetEntry` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `BudgetEntry` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `BudgetUser` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `BudgetUser` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Report` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `Report` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `Service` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `Service` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `appointment` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `appointment` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `appointment_type` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `appointment_type` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `blog_post` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `blog_post` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `blog_post_author` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `blog_post_author` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `blog_post_tag` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `blog_post_tag` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `blog_post_tag_arrow` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `blog_post_tag_arrow` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `concept` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `concept` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `conceptClassId` column on the `concept` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `conceptDatatypeId` column on the `concept` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `conceptMapId` column on the `concept` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `conceptSetId` column on the `concept` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `conceptSourceId` column on the `concept` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `concept_answer` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `concept_answer` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `concept_class` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `concept_class` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `concept_data_type` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `concept_data_type` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `concept_map` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `concept_map` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `concept_name` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `concept_name` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `concept_numeric` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `concept_numeric` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `concept_proposal` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `concept_proposal` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `concept_set` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `concept_set` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `concept_source` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `concept_source` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `concept_word` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `concept_word` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `encounter` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `encounter` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `encounter_type` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `encounter_type` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `field` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `field` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `field_answer` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `field_answer` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `field_option` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `field_option` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `form` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `form` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `fieldId` column on the `form` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `form_encounter` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `form_encounter` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `form_resource` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `form_resource` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `form_submission` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `form_submission` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `location` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `location` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `obs` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `obs` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `order` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `order` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `orderFrequencyId` column on the `order` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `orderRouteId` column on the `order` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `orderTypeId` column on the `order` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The `orderUnitId` column on the `order` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `order_frequency` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `order_frequency` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `order_route` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `order_route` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `order_type` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `order_type` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `order_unit` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `order_unit` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `patient` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `patient` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `provider` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `provider` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `resource` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `resource` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - The primary key for the `space_time_coordinates` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - The `id` column on the `space_time_coordinates` table would be dropped and recreated. This will lead to data loss if there is data in the column.
  - A unique constraint covering the columns `[userId,budgetId]` on the table `BudgetBudgetUser` will be added. If there are existing duplicate values, this will fail.
  - Changed the type of `budUserId` on the `BudEvent` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `userId` on the `BudgetBudgetUser` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `budgetId` on the `BudgetBudgetUser` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `serviceId` on the `BudgetEntry` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `budgetId` on the `BudgetEntry` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `budgetId` on the `Report` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `appointmentTypeId` on the `appointment` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `patientId` on the `appointment` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `locationId` on the `appointment` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `providerId` on the `appointment` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `authorId` on the `blog_post` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `spaceTimeCoordinatesId` on the `blog_post` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `postId` on the `blog_post_tag_arrow` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `tagId` on the `blog_post_tag_arrow` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `conceptId` on the `concept_answer` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `answerConceptId` on the `concept_answer` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `conceptId` on the `concept_name` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `conceptId` on the `concept_numeric` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `conceptId` on the `concept_proposal` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `conceptId` on the `concept_word` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `encounterTypeId` on the `encounter` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `patientId` on the `encounter` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `locationId` on the `encounter` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `formId` on the `encounter` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `providerId` on the `encounter` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `conceptId` on the `field` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `formSubmissionId` on the `field_answer` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `fieldId` on the `field_answer` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `fieldId` on the `field_option` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `formId` on the `form_encounter` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `encounterId` on the `form_encounter` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `formId` on the `form_resource` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `resourceId` on the `form_resource` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `formId` on the `form_submission` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `encounterId` on the `form_submission` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `conceptId` on the `obs` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `encounterId` on the `obs` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `conceptId` on the `order` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.
  - Changed the type of `encounterId` on the `order` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- DropForeignKey
ALTER TABLE "BudEvent" DROP CONSTRAINT "BudEvent_budUserId_fkey";

-- DropForeignKey
ALTER TABLE "BudgetBudgetUser" DROP CONSTRAINT "BudgetBudgetUser_budgetId_fkey";

-- DropForeignKey
ALTER TABLE "BudgetBudgetUser" DROP CONSTRAINT "BudgetBudgetUser_userId_fkey";

-- DropForeignKey
ALTER TABLE "BudgetEntry" DROP CONSTRAINT "BudgetEntry_budgetId_fkey";

-- DropForeignKey
ALTER TABLE "BudgetEntry" DROP CONSTRAINT "BudgetEntry_serviceId_fkey";

-- DropForeignKey
ALTER TABLE "Report" DROP CONSTRAINT "Report_budgetId_fkey";

-- DropForeignKey
ALTER TABLE "appointment" DROP CONSTRAINT "appointment_appointmentTypeId_fkey";

-- DropForeignKey
ALTER TABLE "appointment" DROP CONSTRAINT "appointment_locationId_fkey";

-- DropForeignKey
ALTER TABLE "appointment" DROP CONSTRAINT "appointment_patientId_fkey";

-- DropForeignKey
ALTER TABLE "appointment" DROP CONSTRAINT "appointment_providerId_fkey";

-- DropForeignKey
ALTER TABLE "blog_post" DROP CONSTRAINT "blog_post_authorId_fkey";

-- DropForeignKey
ALTER TABLE "blog_post" DROP CONSTRAINT "blog_post_spaceTimeCoordinatesId_fkey";

-- DropForeignKey
ALTER TABLE "blog_post_tag_arrow" DROP CONSTRAINT "blog_post_tag_arrow_postId_fkey";

-- DropForeignKey
ALTER TABLE "blog_post_tag_arrow" DROP CONSTRAINT "blog_post_tag_arrow_tagId_fkey";

-- DropForeignKey
ALTER TABLE "concept" DROP CONSTRAINT "concept_conceptClassId_fkey";

-- DropForeignKey
ALTER TABLE "concept" DROP CONSTRAINT "concept_conceptDatatypeId_fkey";

-- DropForeignKey
ALTER TABLE "concept" DROP CONSTRAINT "concept_conceptMapId_fkey";

-- DropForeignKey
ALTER TABLE "concept" DROP CONSTRAINT "concept_conceptSetId_fkey";

-- DropForeignKey
ALTER TABLE "concept" DROP CONSTRAINT "concept_conceptSourceId_fkey";

-- DropForeignKey
ALTER TABLE "concept_answer" DROP CONSTRAINT "concept_answer_answerConceptId_fkey";

-- DropForeignKey
ALTER TABLE "concept_answer" DROP CONSTRAINT "concept_answer_conceptId_fkey";

-- DropForeignKey
ALTER TABLE "concept_name" DROP CONSTRAINT "concept_name_conceptId_fkey";

-- DropForeignKey
ALTER TABLE "concept_numeric" DROP CONSTRAINT "concept_numeric_conceptId_fkey";

-- DropForeignKey
ALTER TABLE "concept_proposal" DROP CONSTRAINT "concept_proposal_conceptId_fkey";

-- DropForeignKey
ALTER TABLE "concept_word" DROP CONSTRAINT "concept_word_conceptId_fkey";

-- DropForeignKey
ALTER TABLE "encounter" DROP CONSTRAINT "encounter_encounterTypeId_fkey";

-- DropForeignKey
ALTER TABLE "encounter" DROP CONSTRAINT "encounter_formId_fkey";

-- DropForeignKey
ALTER TABLE "encounter" DROP CONSTRAINT "encounter_locationId_fkey";

-- DropForeignKey
ALTER TABLE "encounter" DROP CONSTRAINT "encounter_patientId_fkey";

-- DropForeignKey
ALTER TABLE "encounter" DROP CONSTRAINT "encounter_providerId_fkey";

-- DropForeignKey
ALTER TABLE "field" DROP CONSTRAINT "field_conceptId_fkey";

-- DropForeignKey
ALTER TABLE "field_answer" DROP CONSTRAINT "field_answer_fieldId_fkey";

-- DropForeignKey
ALTER TABLE "field_answer" DROP CONSTRAINT "field_answer_formSubmissionId_fkey";

-- DropForeignKey
ALTER TABLE "field_option" DROP CONSTRAINT "field_option_fieldId_fkey";

-- DropForeignKey
ALTER TABLE "form" DROP CONSTRAINT "form_fieldId_fkey";

-- DropForeignKey
ALTER TABLE "form_encounter" DROP CONSTRAINT "form_encounter_encounterId_fkey";

-- DropForeignKey
ALTER TABLE "form_encounter" DROP CONSTRAINT "form_encounter_formId_fkey";

-- DropForeignKey
ALTER TABLE "form_resource" DROP CONSTRAINT "form_resource_formId_fkey";

-- DropForeignKey
ALTER TABLE "form_resource" DROP CONSTRAINT "form_resource_resourceId_fkey";

-- DropForeignKey
ALTER TABLE "form_submission" DROP CONSTRAINT "form_submission_encounterId_fkey";

-- DropForeignKey
ALTER TABLE "form_submission" DROP CONSTRAINT "form_submission_formId_fkey";

-- DropForeignKey
ALTER TABLE "obs" DROP CONSTRAINT "obs_conceptId_fkey";

-- DropForeignKey
ALTER TABLE "obs" DROP CONSTRAINT "obs_encounterId_fkey";

-- DropForeignKey
ALTER TABLE "order" DROP CONSTRAINT "order_conceptId_fkey";

-- DropForeignKey
ALTER TABLE "order" DROP CONSTRAINT "order_encounterId_fkey";

-- DropForeignKey
ALTER TABLE "order" DROP CONSTRAINT "order_orderFrequencyId_fkey";

-- DropForeignKey
ALTER TABLE "order" DROP CONSTRAINT "order_orderRouteId_fkey";

-- DropForeignKey
ALTER TABLE "order" DROP CONSTRAINT "order_orderTypeId_fkey";

-- DropForeignKey
ALTER TABLE "order" DROP CONSTRAINT "order_orderUnitId_fkey";

-- AlterTable
ALTER TABLE "BudEvent" DROP CONSTRAINT "BudEvent_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "budUserId",
ADD COLUMN     "budUserId" UUID NOT NULL,
ADD CONSTRAINT "BudEvent_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Budget" DROP CONSTRAINT "Budget_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "reportId",
ADD COLUMN     "reportId" UUID,
ADD CONSTRAINT "Budget_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "BudgetBudgetUser" DROP CONSTRAINT "BudgetBudgetUser_pkey",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "userId",
ADD COLUMN     "userId" UUID NOT NULL,
DROP COLUMN "budgetId",
ADD COLUMN     "budgetId" UUID NOT NULL,
ADD CONSTRAINT "BudgetBudgetUser_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "BudgetEntry" DROP CONSTRAINT "BudgetEntry_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "serviceId",
ADD COLUMN     "serviceId" UUID NOT NULL,
DROP COLUMN "budgetId",
ADD COLUMN     "budgetId" UUID NOT NULL,
ADD CONSTRAINT "BudgetEntry_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "BudgetUser" DROP CONSTRAINT "BudgetUser_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "BudgetUser_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Report" DROP CONSTRAINT "Report_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "budgetId",
ADD COLUMN     "budgetId" UUID NOT NULL,
ADD CONSTRAINT "Report_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "Service" DROP CONSTRAINT "Service_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "Service_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "appointment" DROP CONSTRAINT "appointment_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "appointmentTypeId",
ADD COLUMN     "appointmentTypeId" UUID NOT NULL,
DROP COLUMN "patientId",
ADD COLUMN     "patientId" UUID NOT NULL,
DROP COLUMN "locationId",
ADD COLUMN     "locationId" UUID NOT NULL,
DROP COLUMN "providerId",
ADD COLUMN     "providerId" UUID NOT NULL,
ADD CONSTRAINT "appointment_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "appointment_type" DROP CONSTRAINT "appointment_type_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "appointment_type_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "blog_post" DROP CONSTRAINT "blog_post_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "authorId",
ADD COLUMN     "authorId" UUID NOT NULL,
DROP COLUMN "spaceTimeCoordinatesId",
ADD COLUMN     "spaceTimeCoordinatesId" UUID NOT NULL,
ADD CONSTRAINT "blog_post_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "blog_post_author" DROP CONSTRAINT "blog_post_author_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "blog_post_author_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "blog_post_tag" DROP CONSTRAINT "blog_post_tag_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "blog_post_tag_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "blog_post_tag_arrow" DROP CONSTRAINT "blog_post_tag_arrow_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "postId",
ADD COLUMN     "postId" UUID NOT NULL,
DROP COLUMN "tagId",
ADD COLUMN     "tagId" UUID NOT NULL,
ADD CONSTRAINT "blog_post_tag_arrow_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "concept" DROP CONSTRAINT "concept_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "conceptClassId",
ADD COLUMN     "conceptClassId" UUID,
DROP COLUMN "conceptDatatypeId",
ADD COLUMN     "conceptDatatypeId" UUID,
DROP COLUMN "conceptMapId",
ADD COLUMN     "conceptMapId" UUID,
DROP COLUMN "conceptSetId",
ADD COLUMN     "conceptSetId" UUID,
DROP COLUMN "conceptSourceId",
ADD COLUMN     "conceptSourceId" UUID,
ADD CONSTRAINT "concept_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "concept_answer" DROP CONSTRAINT "concept_answer_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "conceptId",
ADD COLUMN     "conceptId" UUID NOT NULL,
DROP COLUMN "answerConceptId",
ADD COLUMN     "answerConceptId" UUID NOT NULL,
ADD CONSTRAINT "concept_answer_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "concept_class" DROP CONSTRAINT "concept_class_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "concept_class_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "concept_data_type" DROP CONSTRAINT "concept_data_type_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "concept_data_type_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "concept_map" DROP CONSTRAINT "concept_map_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "concept_map_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "concept_name" DROP CONSTRAINT "concept_name_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "conceptId",
ADD COLUMN     "conceptId" UUID NOT NULL,
ADD CONSTRAINT "concept_name_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "concept_numeric" DROP CONSTRAINT "concept_numeric_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "conceptId",
ADD COLUMN     "conceptId" UUID NOT NULL,
ADD CONSTRAINT "concept_numeric_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "concept_proposal" DROP CONSTRAINT "concept_proposal_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "conceptId",
ADD COLUMN     "conceptId" UUID NOT NULL,
ADD CONSTRAINT "concept_proposal_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "concept_set" DROP CONSTRAINT "concept_set_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "concept_set_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "concept_source" DROP CONSTRAINT "concept_source_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "concept_source_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "concept_word" DROP CONSTRAINT "concept_word_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "conceptId",
ADD COLUMN     "conceptId" UUID NOT NULL,
ADD CONSTRAINT "concept_word_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "encounter" DROP CONSTRAINT "encounter_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "encounterTypeId",
ADD COLUMN     "encounterTypeId" UUID NOT NULL,
DROP COLUMN "patientId",
ADD COLUMN     "patientId" UUID NOT NULL,
DROP COLUMN "locationId",
ADD COLUMN     "locationId" UUID NOT NULL,
DROP COLUMN "formId",
ADD COLUMN     "formId" UUID NOT NULL,
DROP COLUMN "providerId",
ADD COLUMN     "providerId" UUID NOT NULL,
ADD CONSTRAINT "encounter_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "encounter_type" DROP CONSTRAINT "encounter_type_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "encounter_type_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "field" DROP CONSTRAINT "field_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "conceptId",
ADD COLUMN     "conceptId" UUID NOT NULL,
ADD CONSTRAINT "field_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "field_answer" DROP CONSTRAINT "field_answer_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "formSubmissionId",
ADD COLUMN     "formSubmissionId" UUID NOT NULL,
DROP COLUMN "fieldId",
ADD COLUMN     "fieldId" UUID NOT NULL,
ADD CONSTRAINT "field_answer_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "field_option" DROP CONSTRAINT "field_option_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "fieldId",
ADD COLUMN     "fieldId" UUID NOT NULL,
ADD CONSTRAINT "field_option_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "form" DROP CONSTRAINT "form_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "fieldId",
ADD COLUMN     "fieldId" UUID,
ADD CONSTRAINT "form_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "form_encounter" DROP CONSTRAINT "form_encounter_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "formId",
ADD COLUMN     "formId" UUID NOT NULL,
DROP COLUMN "encounterId",
ADD COLUMN     "encounterId" UUID NOT NULL,
ADD CONSTRAINT "form_encounter_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "form_resource" DROP CONSTRAINT "form_resource_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "formId",
ADD COLUMN     "formId" UUID NOT NULL,
DROP COLUMN "resourceId",
ADD COLUMN     "resourceId" UUID NOT NULL,
ADD CONSTRAINT "form_resource_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "form_submission" DROP CONSTRAINT "form_submission_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "formId",
ADD COLUMN     "formId" UUID NOT NULL,
DROP COLUMN "encounterId",
ADD COLUMN     "encounterId" UUID NOT NULL,
ADD CONSTRAINT "form_submission_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "location" DROP CONSTRAINT "location_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "location_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "obs" DROP CONSTRAINT "obs_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "conceptId",
ADD COLUMN     "conceptId" UUID NOT NULL,
DROP COLUMN "encounterId",
ADD COLUMN     "encounterId" UUID NOT NULL,
ADD CONSTRAINT "obs_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "order" DROP CONSTRAINT "order_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
DROP COLUMN "conceptId",
ADD COLUMN     "conceptId" UUID NOT NULL,
DROP COLUMN "encounterId",
ADD COLUMN     "encounterId" UUID NOT NULL,
DROP COLUMN "orderFrequencyId",
ADD COLUMN     "orderFrequencyId" UUID,
DROP COLUMN "orderRouteId",
ADD COLUMN     "orderRouteId" UUID,
DROP COLUMN "orderTypeId",
ADD COLUMN     "orderTypeId" UUID,
DROP COLUMN "orderUnitId",
ADD COLUMN     "orderUnitId" UUID,
ADD CONSTRAINT "order_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "order_frequency" DROP CONSTRAINT "order_frequency_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "order_frequency_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "order_route" DROP CONSTRAINT "order_route_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "order_route_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "order_type" DROP CONSTRAINT "order_type_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "order_type_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "order_unit" DROP CONSTRAINT "order_unit_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "order_unit_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "patient" DROP CONSTRAINT "patient_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "patient_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "provider" DROP CONSTRAINT "provider_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "provider_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "resource" DROP CONSTRAINT "resource_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "resource_pkey" PRIMARY KEY ("id");

-- AlterTable
ALTER TABLE "space_time_coordinates" DROP CONSTRAINT "space_time_coordinates_pkey",
DROP COLUMN "id",
ADD COLUMN     "id" UUID NOT NULL DEFAULT gen_random_uuid(),
ADD CONSTRAINT "space_time_coordinates_pkey" PRIMARY KEY ("id");

-- CreateTable
CREATE TABLE "User" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Session" (
    "id" UUID NOT NULL DEFAULT gen_random_uuid(),
    "userId" UUID NOT NULL,
    "expiresAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Session_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "BudgetBudgetUser_userId_budgetId_key" ON "BudgetBudgetUser"("userId", "budgetId");

-- CreateIndex
CREATE UNIQUE INDEX "Report_budgetId_key" ON "Report"("budgetId");

-- CreateIndex
CREATE UNIQUE INDEX "appointment_patientId_locationId_providerId_key" ON "appointment"("patientId", "locationId", "providerId");

-- CreateIndex
CREATE UNIQUE INDEX "blog_post_spaceTimeCoordinatesId_key" ON "blog_post"("spaceTimeCoordinatesId");

-- CreateIndex
CREATE UNIQUE INDEX "blog_post_tag_arrow_postId_tagId_key" ON "blog_post_tag_arrow"("postId", "tagId");

-- AddForeignKey
ALTER TABLE "Session" ADD CONSTRAINT "Session_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE CASCADE ON UPDATE CASCADE;

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
