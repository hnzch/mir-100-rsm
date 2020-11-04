/********************************************************************************
** Form generated from reading UI file 'rsm_controls.ui'
**
** Created by: Qt User Interface Compiler version 5.9.5
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_RSM_CONTROLS_H
#define UI_RSM_CONTROLS_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QCheckBox>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QGridLayout>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QVBoxLayout>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_rsm_controls
{
public:
    QVBoxLayout *verticalLayout_2;
    QGroupBox *control_box;
    QGridLayout *gridLayout_4;
    QVBoxLayout *verticalLayout_4;
    QPushButton *emergency_stop_button;
    QHBoxLayout *horizontalLayout_4;
    QRadioButton *autonomy_radio_button;
    QRadioButton *stopped_radio_button;
    QRadioButton *teleoperation_radio_button;
    QHBoxLayout *horizontalLayout_5;
    QLabel *autonomy_label;
    QLabel *stopped_label;
    QLabel *teleoperation_label;
    QLabel *control_label;
    QLabel *current_state_text;
    QGroupBox *exploration_box;
    QGridLayout *gridLayout_2;
    QVBoxLayout *verticalLayout;
    QHBoxLayout *horizontalLayout_2;
    QPushButton *start_exploration_button;
    QComboBox *exploration_mode_box;
    QLabel *exploration_info_text;
    QLabel *exploration_label;
    QGroupBox *waypoint_following_box;
    QGridLayout *gridLayout;
    QVBoxLayout *verticalLayout_3;
    QHBoxLayout *horizontalLayout;
    QPushButton *start_waypoint_following_button;
    QPushButton *reset_waypoints_button;
    QComboBox *mode_box;
    QLabel *waypoint_following_info_text;
    QHBoxLayout *horizontalLayout_3;
    QPushButton *set_waypoint_button;
    QComboBox *routine_combo_box;
    QLabel *waypoint_following_label;
    QGroupBox *movement_box;
    QGridLayout *gridLayout_3;
    QLabel *movement_label;
    QHBoxLayout *horizontalLayout_6;
    QCheckBox *reverse_checkbox;
    QPushButton *stop_2d_nav_goal_button;

    void setupUi(QWidget *rsm_controls)
    {
        if (rsm_controls->objectName().isEmpty())
            rsm_controls->setObjectName(QStringLiteral("rsm_controls"));
        rsm_controls->resize(416, 503);
        verticalLayout_2 = new QVBoxLayout(rsm_controls);
        verticalLayout_2->setObjectName(QStringLiteral("verticalLayout_2"));
        control_box = new QGroupBox(rsm_controls);
        control_box->setObjectName(QStringLiteral("control_box"));
        control_box->setStyleSheet(QLatin1String("QGroupBox#control_box {\n"
"	border: 2px solid black;\n"
"}"));
        gridLayout_4 = new QGridLayout(control_box);
        gridLayout_4->setObjectName(QStringLiteral("gridLayout_4"));
        verticalLayout_4 = new QVBoxLayout();
        verticalLayout_4->setObjectName(QStringLiteral("verticalLayout_4"));
        emergency_stop_button = new QPushButton(control_box);
        emergency_stop_button->setObjectName(QStringLiteral("emergency_stop_button"));
        QFont font;
        font.setPointSize(12);
        font.setBold(true);
        font.setWeight(75);
        emergency_stop_button->setFont(font);
        emergency_stop_button->setStyleSheet(QLatin1String("background-color: rgba(150,0,0,1);\n"
"color: rgba(255,255,255,1);"));

        verticalLayout_4->addWidget(emergency_stop_button);

        horizontalLayout_4 = new QHBoxLayout();
        horizontalLayout_4->setObjectName(QStringLiteral("horizontalLayout_4"));
        autonomy_radio_button = new QRadioButton(control_box);
        autonomy_radio_button->setObjectName(QStringLiteral("autonomy_radio_button"));
        autonomy_radio_button->setStyleSheet(QLatin1String("QRadioButton {\n"
"	margin-left:50%;\n"
"	margin-right:50%;\n"
"}"));

        horizontalLayout_4->addWidget(autonomy_radio_button);

        stopped_radio_button = new QRadioButton(control_box);
        stopped_radio_button->setObjectName(QStringLiteral("stopped_radio_button"));
        stopped_radio_button->setStyleSheet(QLatin1String("QRadioButton {\n"
"	margin-left:50%;\n"
"   margin-right:50%;\n"
"}"));
        stopped_radio_button->setChecked(true);

        horizontalLayout_4->addWidget(stopped_radio_button);

        teleoperation_radio_button = new QRadioButton(control_box);
        teleoperation_radio_button->setObjectName(QStringLiteral("teleoperation_radio_button"));
        teleoperation_radio_button->setStyleSheet(QLatin1String("QRadioButton {\n"
"	margin-left:50%;\n"
"	margin-right:50%;\n"
"}"));

        horizontalLayout_4->addWidget(teleoperation_radio_button);


        verticalLayout_4->addLayout(horizontalLayout_4);

        horizontalLayout_5 = new QHBoxLayout();
        horizontalLayout_5->setObjectName(QStringLiteral("horizontalLayout_5"));
        autonomy_label = new QLabel(control_box);
        autonomy_label->setObjectName(QStringLiteral("autonomy_label"));
        autonomy_label->setAlignment(Qt::AlignCenter);

        horizontalLayout_5->addWidget(autonomy_label);

        stopped_label = new QLabel(control_box);
        stopped_label->setObjectName(QStringLiteral("stopped_label"));
        stopped_label->setAlignment(Qt::AlignCenter);

        horizontalLayout_5->addWidget(stopped_label);

        teleoperation_label = new QLabel(control_box);
        teleoperation_label->setObjectName(QStringLiteral("teleoperation_label"));
        teleoperation_label->setAlignment(Qt::AlignCenter);

        horizontalLayout_5->addWidget(teleoperation_label);


        verticalLayout_4->addLayout(horizontalLayout_5);


        gridLayout_4->addLayout(verticalLayout_4, 1, 0, 1, 1);

        control_label = new QLabel(control_box);
        control_label->setObjectName(QStringLiteral("control_label"));

        gridLayout_4->addWidget(control_label, 0, 0, 1, 1);

        current_state_text = new QLabel(control_box);
        current_state_text->setObjectName(QStringLiteral("current_state_text"));
        current_state_text->setMargin(0);

        gridLayout_4->addWidget(current_state_text, 2, 0, 1, 1);


        verticalLayout_2->addWidget(control_box);

        exploration_box = new QGroupBox(rsm_controls);
        exploration_box->setObjectName(QStringLiteral("exploration_box"));
        exploration_box->setStyleSheet(QLatin1String("QGroupBox#exploration_box {\n"
"	border: 2px solid black;\n"
"}"));
        exploration_box->setFlat(true);
        gridLayout_2 = new QGridLayout(exploration_box);
        gridLayout_2->setObjectName(QStringLiteral("gridLayout_2"));
        verticalLayout = new QVBoxLayout();
        verticalLayout->setSpacing(6);
        verticalLayout->setObjectName(QStringLiteral("verticalLayout"));
        verticalLayout->setContentsMargins(-1, -1, -1, 0);
        horizontalLayout_2 = new QHBoxLayout();
        horizontalLayout_2->setObjectName(QStringLiteral("horizontalLayout_2"));
        start_exploration_button = new QPushButton(exploration_box);
        start_exploration_button->setObjectName(QStringLiteral("start_exploration_button"));

        horizontalLayout_2->addWidget(start_exploration_button);

        exploration_mode_box = new QComboBox(exploration_box);
        exploration_mode_box->setObjectName(QStringLiteral("exploration_mode_box"));

        horizontalLayout_2->addWidget(exploration_mode_box);


        verticalLayout->addLayout(horizontalLayout_2);

        exploration_info_text = new QLabel(exploration_box);
        exploration_info_text->setObjectName(QStringLiteral("exploration_info_text"));
        exploration_info_text->setAlignment(Qt::AlignCenter);

        verticalLayout->addWidget(exploration_info_text);


        gridLayout_2->addLayout(verticalLayout, 1, 1, 1, 1);

        exploration_label = new QLabel(exploration_box);
        exploration_label->setObjectName(QStringLiteral("exploration_label"));

        gridLayout_2->addWidget(exploration_label, 0, 1, 1, 1);


        verticalLayout_2->addWidget(exploration_box);

        waypoint_following_box = new QGroupBox(rsm_controls);
        waypoint_following_box->setObjectName(QStringLiteral("waypoint_following_box"));
        waypoint_following_box->setStyleSheet(QLatin1String("QGroupBox#waypoint_following_box {\n"
"	border: 2px solid black;\n"
"}"));
        gridLayout = new QGridLayout(waypoint_following_box);
        gridLayout->setObjectName(QStringLiteral("gridLayout"));
        verticalLayout_3 = new QVBoxLayout();
        verticalLayout_3->setObjectName(QStringLiteral("verticalLayout_3"));
        horizontalLayout = new QHBoxLayout();
        horizontalLayout->setObjectName(QStringLiteral("horizontalLayout"));
        start_waypoint_following_button = new QPushButton(waypoint_following_box);
        start_waypoint_following_button->setObjectName(QStringLiteral("start_waypoint_following_button"));

        horizontalLayout->addWidget(start_waypoint_following_button);

        reset_waypoints_button = new QPushButton(waypoint_following_box);
        reset_waypoints_button->setObjectName(QStringLiteral("reset_waypoints_button"));

        horizontalLayout->addWidget(reset_waypoints_button);

        mode_box = new QComboBox(waypoint_following_box);
        mode_box->setObjectName(QStringLiteral("mode_box"));

        horizontalLayout->addWidget(mode_box);


        verticalLayout_3->addLayout(horizontalLayout);

        waypoint_following_info_text = new QLabel(waypoint_following_box);
        waypoint_following_info_text->setObjectName(QStringLiteral("waypoint_following_info_text"));
        waypoint_following_info_text->setAlignment(Qt::AlignCenter);

        verticalLayout_3->addWidget(waypoint_following_info_text);

        horizontalLayout_3 = new QHBoxLayout();
        horizontalLayout_3->setObjectName(QStringLiteral("horizontalLayout_3"));
        set_waypoint_button = new QPushButton(waypoint_following_box);
        set_waypoint_button->setObjectName(QStringLiteral("set_waypoint_button"));

        horizontalLayout_3->addWidget(set_waypoint_button);

        routine_combo_box = new QComboBox(waypoint_following_box);
        routine_combo_box->setObjectName(QStringLiteral("routine_combo_box"));

        horizontalLayout_3->addWidget(routine_combo_box);


        verticalLayout_3->addLayout(horizontalLayout_3);


        gridLayout->addLayout(verticalLayout_3, 1, 0, 1, 1);

        waypoint_following_label = new QLabel(waypoint_following_box);
        waypoint_following_label->setObjectName(QStringLiteral("waypoint_following_label"));

        gridLayout->addWidget(waypoint_following_label, 0, 0, 1, 1);


        verticalLayout_2->addWidget(waypoint_following_box);

        movement_box = new QGroupBox(rsm_controls);
        movement_box->setObjectName(QStringLiteral("movement_box"));
        movement_box->setStyleSheet(QLatin1String("QGroupBox#movement_box {\n"
"	border: 2px solid black;\n"
"}"));
        gridLayout_3 = new QGridLayout(movement_box);
        gridLayout_3->setObjectName(QStringLiteral("gridLayout_3"));
        movement_label = new QLabel(movement_box);
        movement_label->setObjectName(QStringLiteral("movement_label"));

        gridLayout_3->addWidget(movement_label, 0, 0, 1, 1);

        horizontalLayout_6 = new QHBoxLayout();
        horizontalLayout_6->setObjectName(QStringLiteral("horizontalLayout_6"));
        reverse_checkbox = new QCheckBox(movement_box);
        reverse_checkbox->setObjectName(QStringLiteral("reverse_checkbox"));

        horizontalLayout_6->addWidget(reverse_checkbox);

        stop_2d_nav_goal_button = new QPushButton(movement_box);
        stop_2d_nav_goal_button->setObjectName(QStringLiteral("stop_2d_nav_goal_button"));

        horizontalLayout_6->addWidget(stop_2d_nav_goal_button);


        gridLayout_3->addLayout(horizontalLayout_6, 1, 0, 1, 1);


        verticalLayout_2->addWidget(movement_box);


        retranslateUi(rsm_controls);

        QMetaObject::connectSlotsByName(rsm_controls);
    } // setupUi

    void retranslateUi(QWidget *rsm_controls)
    {
        rsm_controls->setWindowTitle(QApplication::translate("rsm_controls", "Form", Q_NULLPTR));
        control_box->setTitle(QString());
        emergency_stop_button->setText(QApplication::translate("rsm_controls", "Software Stop", Q_NULLPTR));
        autonomy_radio_button->setText(QString());
        stopped_radio_button->setText(QString());
        teleoperation_radio_button->setText(QString());
        autonomy_label->setText(QApplication::translate("rsm_controls", "Autonomy", Q_NULLPTR));
        stopped_label->setText(QApplication::translate("rsm_controls", "Stopped", Q_NULLPTR));
        teleoperation_label->setText(QApplication::translate("rsm_controls", "Teleoperation", Q_NULLPTR));
        control_label->setText(QApplication::translate("rsm_controls", "Control", Q_NULLPTR));
        current_state_text->setText(QApplication::translate("rsm_controls", "Current State:", Q_NULLPTR));
        exploration_box->setTitle(QString());
        start_exploration_button->setText(QApplication::translate("rsm_controls", "Start", Q_NULLPTR));
        exploration_mode_box->clear();
        exploration_mode_box->insertItems(0, QStringList()
         << QApplication::translate("rsm_controls", "Finish", Q_NULLPTR)
         << QApplication::translate("rsm_controls", "Interrupt", Q_NULLPTR)
        );
        exploration_info_text->setText(QString());
        exploration_label->setText(QApplication::translate("rsm_controls", "Exploration", Q_NULLPTR));
        waypoint_following_box->setTitle(QString());
        start_waypoint_following_button->setText(QApplication::translate("rsm_controls", "Start", Q_NULLPTR));
        reset_waypoints_button->setText(QApplication::translate("rsm_controls", "Reset", Q_NULLPTR));
        mode_box->clear();
        mode_box->insertItems(0, QStringList()
         << QApplication::translate("rsm_controls", "Single", Q_NULLPTR)
         << QApplication::translate("rsm_controls", "Roundtrip", Q_NULLPTR)
         << QApplication::translate("rsm_controls", "Patrol", Q_NULLPTR)
        );
        waypoint_following_info_text->setText(QString());
        set_waypoint_button->setText(QApplication::translate("rsm_controls", "Set Waypoint", Q_NULLPTR));
        waypoint_following_label->setText(QApplication::translate("rsm_controls", "Waypoint Following", Q_NULLPTR));
        movement_box->setTitle(QString());
        movement_label->setText(QApplication::translate("rsm_controls", "Movement", Q_NULLPTR));
        reverse_checkbox->setText(QApplication::translate("rsm_controls", "Reverse Driving", Q_NULLPTR));
        stop_2d_nav_goal_button->setText(QApplication::translate("rsm_controls", "Stop 2D Nav Goal", Q_NULLPTR));
    } // retranslateUi

};

namespace Ui {
    class rsm_controls: public Ui_rsm_controls {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_RSM_CONTROLS_H
