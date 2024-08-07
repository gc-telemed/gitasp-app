

import { faArrowCircleUp, faAsterisk, faCalendarAlt, faClose, faContactBook, faCreditCard, faCreditCardAlt, faHeart, faIdBadge, faListNumeric, faMedkit, faMoneyBillTransfer, faMoneyBillTrendUp, faPassport, faPhoneAlt, faPlus, faPlusCircle, faPortrait, faReceipt, faStethoscope, faUserCircle, faUserDoctor, faUserGroup, faUserPen, faUtensils, faWallet } from "@fortawesome/free-solid-svg-icons";

export const sidebarPatientNav = [
  {
    title: "Payments",
    href: "/cliniq/payment-list",
    icon: faWallet,
    items: [
      {
        title: "Issue Request",
        href: "/cliniq/card-issuance-request-list",
        icon: faReceipt,
      },
      {
        title: "Request Review",
        href: "/cliniq/card-application-review-list",
        icon: faIdBadge,
      },
      {
        title: "Update Request",
        href: "/cliniq/card-update-request-list",
        icon: faArrowCircleUp,
      },
      {
        title: "Closing Request",
        href: "/cliniq/card-closing-request-list",
        icon: faClose,
      },
    ],
  },
  {
    title: "Appointments",
    href: "/cliniq/appointment-list",
    icon: faCalendarAlt,
    items: [
      {
        title: "Clinic Visits",
        href: "/cliniq/clinic-appointment-list",
        icon: faCreditCard,
      },
      {
        title: "Home Visits",
        href: "/cliniq/phone-appointment-list",
        icon: faAsterisk,
      },
      {
        title: "Telemed Calls",
        href: "/cliniq/card-limit-list",
        icon: faPhoneAlt,
      },
      {
        title: "Doctor Schedules",
        href: "/cliniq/card-limit-list",
        icon: faCalendarAlt,
      },
    ],
  },
  {
    title: "Patients",
    href: "/cliniq/patient-list",
    icon: faContactBook,
    items: [
      {
        title: "Patient Accounts",
        href: "/cliniq/patient-list",
        icon: faUserDoctor,
      },
      {
        title: "Patient Details",
        href: "/cliniq/patient-detail-list",
        icon: faUserPen,
      },
      {
        title: "Organizations",
        href: "/cliniq/patient-org-list",
        icon: faUserGroup,
      },
      {
        title: "Memberships",
        href: "/cliniq/user-asset-list",
        icon: faUserCircle,
      },
    ],
  },


  {
    title: "Service Catalogs",
    href: "/cliniq/catalogs",
    icon: faPassport,
    items: [
      {
        title: "Treatments",
        href: "/cliniq/card-issuance-request-list",
        icon: faStethoscope,
      },
      {
        title: "Surgeries",
        href: "/cliniq/card-application-review-list",
        icon: faHeart,
      },
      {
        title: "Therapies",
        href: "/cliniq/card-update-request-list",
        icon: faArrowCircleUp,
      },
      {
        title: "Medications",
        href: "/cliniq/card-closing-request-list",
        icon: faMedkit,
      },
    ],
  },
  {
    title: "Equipments",
    href: "/cliniq/payment-list",
    icon: faUtensils,
    items: [
      {
        title: "Issue Request",
        href: "/cliniq/card-issuance-request-list",
        icon: faPlus,
      },
      {
        title: "Request Review",
        href: "/cliniq/card-application-review-list",
        icon: faPlusCircle,
      },
      {
        title: "Update Request",
        href: "/cliniq/card-update-request-list",
        icon: faArrowCircleUp,
      },
      {
        title: "Closing Request",
        href: "/cliniq/card-closing-request-list",
        icon: faClose,
      },
    ],
  },
];

export const sidebarEmployeeNav = [
  {
    title: "User Accounts",
    href: "/cardman/user-list",
    icon: faUserGroup,
    items: [
      {
        title: "Users",
        href: "/cardman/user-list",
        icon: faUserCircle,
        label: "All Users"
      },
      {
        title: "User Profiles",
        href: "/cardman/user-profile-list",
        icon: faPortrait,
      },
      {
        title: "User Groups",
        href: "/cardman/user-group-list",
        icon: faUserCircle,
      },
      {
        title: "User Assets",
        href: "/cardman/user-asset-list",
        icon: faUserPen,
      },
    ],
  },
  {
    title: "Cards & Keys",
    href: "/cardman/card-list",
    icon: faCreditCardAlt,
    items: [
      {
        title: "Cards",
        href: "/cardman/card-list",
        icon: faCreditCard,
      },
      {
        title: "Credit Scores",
        href: "/cardman/card-score-list",
        icon: faListNumeric,
      },
      {
        title: "Prepaid Limits",
        href: "/cardman/card-limit-list",
        icon: faAsterisk,
      },
      {
        title: "Issue Request",
        href: "/cardman/card-issuance-request-list",
        icon: faPlus,
      },
      {
        title: "Request Review",
        href: "/cardman/card-application-review-list",
        icon: faPlusCircle,
      },
      {
        title: "Update Request",
        href: "/cardman/card-update-request-list",
        icon: faArrowCircleUp,
      },
      {
        title: "Closing Request",
        href: "/cardman/card-closing-request-list",
        icon: faClose,
      },
    ],
  },
  {
    title: "Expense Reports",
    href: "/cardman/expense-list",
    icon: faMoneyBillTransfer,
    items: [
      {
        title: "Cards",
        href: "/cardman/expense-list",
        icon: faCreditCard,
      },
      {
        title: "Credit Scores",
        href: "/cardman/expense-score-list",
        icon: faListNumeric,
      },
      {
        title: "Monthly Limits",
        href: "/cardman/expense-limit-list",
        icon: faAsterisk,
      },
      {
        title: "Issue Request",
        href: "/cardman/expense-issuance-request-list",
        icon: faPlus,
      },
      {
        title: "Request Review",
        href: "/cardman/expense-application-review-list",
        icon: faPlusCircle,
      },
      {
        title: "Update Request",
        href: "/cardman/expense-update-request-list",
        icon: faArrowCircleUp,
      },
      {
        title: "Closing Request",
        href: "/cardman/expense-closing-request-list",
        icon: faClose,
      },
    ],
  },
  {
    title: "Budget Proposals",
    href: "/cardman/budget-list",
    icon: faMoneyBillTrendUp,
    items: [
      {
        title: "Cards",
        href: "/cardman/budget-list",
        icon: faCreditCard,
      },
      {
        title: "Credit Scores",
        href: "/cardman/budget-score-list",
        icon: faListNumeric,
      },
      {
        title: "Monthly Limits",
        href: "/cardman/budget-limit-list",
        icon: faAsterisk,
      },
      {
        title: "Issue Request",
        href: "/cardman/budget-issuance-request-list",
        icon: faPlus,
      },
      {
        title: "Request Review",
        href: "/cardman/budget-application-review-list",
        icon: faPlusCircle,
      },
      {
        title: "Update Request",
        href: "/cardman/budget-update-request-list",
        icon: faArrowCircleUp,
      },
      {
        title: "Closing Request",
        href: "/cardman/budget-closing-request-list",
        icon: faClose,
      },
    ],
  },
];
