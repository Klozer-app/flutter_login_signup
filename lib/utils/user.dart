class User {
// Fields
// Fields Your Information
  String title;
  String initials;
  String firstName;
  String surName;
  String gender;
  String iD;
  String dateOfBirth;
  String maritalStatus;
  String occupation;
  String homeLanguage;
  String churchAffiliation;
  String areYouDisable;
  String residentialAddress;
  String fax;
  String phoneNumber;
  String eMail;

//Fields for parents/Guardians/Spouse
  String guardianTitle;
  String guardianInitials;
  String guardianFirstName;
  String guardianSurName;
  String guardianOccupation;
  String guardianResidentialAddress;
  String guardianPhoneNumber;
  String guardianTelephoneNumber;
  String guardianEmail;
  String areTheyStaff;
  String guardianStaffNumber;

//Labels
//Labels Your Information

//Labels Hemis Details
  String nationality;
  String race;
  String province;
  String city;

//Labels Matriculation Details
  String examinationDate;
  String highestGradePassed;
  String examinationNumber;
  String seniorCertificationType;
  String schoolName;
  String examinationBoard;
  String lastExamination;

//Labels Post School Activities
  String prevRegistered;
  String prevInstitution;
  String studentNumber;
  String whenDidYouStart;
  String whenDidYouComplete;
  String whatWereYouStudying;
  String prevExclusion;
  String exclusionInstitution;
  String exclusionStudentNumber;
  String exclusionQualification;
  String exclusionStartDate;
  String exclusionStopDate;
  String reasonForExclusion;

//Labels Additional Documents
  String idUpload;
  String academicReport;

//Labels apply for accommodation
  String applyForAccommodation;


  save() {
    print(firstName);
  }
}

const List<String> titleList = [
  'Choose Your Title',
  'MR',
  'MS',
  'MRS',
  'DR',
  'PROF',
];

const List<String> guardianTitleList = [
  'Choose Their Title',
  'MR',
  'MS',
  'MRS',
  'DR',
  'PROF',
];

const List<String> schoolNameList = [
  'Select Your School',
  'Tlhabane Technical High School',
  'Lebone II - College',
  'H.F Tlou High School',
];

const List<String> maritalStatusList = [
  'Choose Marital Status',
  'Single',
  'Married',
  'Divorced',
  'Widow',
];

const List<String> seniorCertificationList = [
  'Choose Senior Certification Type',
  'NSC - National Senoir Certificate',
  'Other',
];

const List<String> examinationBoardList = [
  'Choose Examination Board',
  'NSC - National Senoir Certificate',
  'IEB - Independent Examination Board',
];

const List<String> highestGradeList = [
  'Choose Highest Grade Passed',
  'Grade 12',
  'Grade 11',
  'Grade 10',
  'Other',
];

const List<String> occupationList = [
  'Learner/Student',
  'Employee',
  'Unemployed',
];
const List<String> guardianOccupationList = [
  'Employed',
  'Unemployed',
];

const List<String> homeLanguageList = [
  'Choose Home Langauge',
  'English',
  'isiZulu',
  'Setswana',
  'Sesotho',
  'siSwati',
  'Tshivenda',
  'Xitsonga',
  'Afrikaans',
  'isiNdebele',
  'isiXhosa',
];

const List<String> churchAffiliationList = [
  'Choose Church',
  'African Independent Church',
  'Pentecostal',
  'Roman Catholic',
  'Methodist',
  'Zion Christian Church(ZCC)',
  'Jehova Witness',
];

const List<String> nationalityList = [
  'Select Nationality',
  'South African',
  'Employee',
  'Unemployed',
];

const List<String> raceList = [
  'Select Race',
  'African',
  'White',
  'Colored',
];

const List<String> provinceList = [
  'Select Province',
  'Gauteng',
  'Limpopo',
  'North West',
];

const List<String> cityList = [
  'Select City',
  'Johannesburg',
  'Rustenburg',
  'Polokwane',
];

const List<String> regCourseList = [
  'Select Degree/Course',
  'B.Sc Medica Sciences',
  'MBA',
  'B.Sc Psychology',
];

const List<String> exclCourseList = [
  'Select Degree/Course',
  'B.Sc Medica Sciences',
  'MBA',
  'B.Sc Psychology',
];

const List<String> regInstitutionList = [
  'Select Institution',
  'UL - University Of Limpopo',
  'UNISA - University Of South Africa',
  'UCT - University Of Cape Town',
];

const List<String> exclInstitutionList = [
  'Select Institution',
  'UL - University Of Limpopo',
  'UNISA - University Of South Africa',
  'UCT - University Of Cape Town',
];

// Radio
const List<String> GENDER_CHOICES = ['Male', 'Female'];
const List<String> ARE_THEY_STAFF_CHOICES = ['Yes', 'No'];
const List<String> DISABILITY_CHOICES = ['Yes', 'No'];
const List<String> PREVIOUS_REGISTRATION_CHOICES = ['Yes', 'No'];
const List<String> EXCLUDED_FROM_INSTITUTION_CHOICES = ['Yes', 'No'];
const List<String> CAMPUS_ACCOMMODATION_CHOICES = ['Yes', 'No'];