﻿#pragma checksum "..\..\LagerItemVerwaltung.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "BA461ECB5A6FFD23C429E20B72C1709E21B0E891"
//------------------------------------------------------------------------------
// <auto-generated>
//     Dieser Code wurde von einem Tool generiert.
//     Laufzeitversion:4.0.30319.42000
//
//     Änderungen an dieser Datei können falsches Verhalten verursachen und gehen verloren, wenn
//     der Code erneut generiert wird.
// </auto-generated>
//------------------------------------------------------------------------------

using Lagerverwaltung;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace Lagerverwaltung {
    
    
    /// <summary>
    /// LagerItemVerwaltung
    /// </summary>
    public partial class LagerItemVerwaltung : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 10 "..\..\LagerItemVerwaltung.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListBox listbox_LagerItem;
        
        #line default
        #line hidden
        
        
        #line 11 "..\..\LagerItemVerwaltung.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btn_add;
        
        #line default
        #line hidden
        
        
        #line 12 "..\..\LagerItemVerwaltung.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label label;
        
        #line default
        #line hidden
        
        
        #line 13 "..\..\LagerItemVerwaltung.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label label1;
        
        #line default
        #line hidden
        
        
        #line 14 "..\..\LagerItemVerwaltung.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label label2;
        
        #line default
        #line hidden
        
        
        #line 15 "..\..\LagerItemVerwaltung.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Label label3;
        
        #line default
        #line hidden
        
        
        #line 16 "..\..\LagerItemVerwaltung.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txt_ID;
        
        #line default
        #line hidden
        
        
        #line 17 "..\..\LagerItemVerwaltung.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txt_Name;
        
        #line default
        #line hidden
        
        
        #line 18 "..\..\LagerItemVerwaltung.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txt_Preis;
        
        #line default
        #line hidden
        
        
        #line 19 "..\..\LagerItemVerwaltung.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txt_Menge;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/Lagerverwaltung;component/lageritemverwaltung.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\LagerItemVerwaltung.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.listbox_LagerItem = ((System.Windows.Controls.ListBox)(target));
            
            #line 10 "..\..\LagerItemVerwaltung.xaml"
            this.listbox_LagerItem.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.listbox_LagerItem_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 2:
            this.btn_add = ((System.Windows.Controls.Button)(target));
            
            #line 11 "..\..\LagerItemVerwaltung.xaml"
            this.btn_add.Click += new System.Windows.RoutedEventHandler(this.btn_add_Click);
            
            #line default
            #line hidden
            return;
            case 3:
            this.label = ((System.Windows.Controls.Label)(target));
            return;
            case 4:
            this.label1 = ((System.Windows.Controls.Label)(target));
            return;
            case 5:
            this.label2 = ((System.Windows.Controls.Label)(target));
            return;
            case 6:
            this.label3 = ((System.Windows.Controls.Label)(target));
            return;
            case 7:
            this.txt_ID = ((System.Windows.Controls.TextBox)(target));
            return;
            case 8:
            this.txt_Name = ((System.Windows.Controls.TextBox)(target));
            return;
            case 9:
            this.txt_Preis = ((System.Windows.Controls.TextBox)(target));
            return;
            case 10:
            this.txt_Menge = ((System.Windows.Controls.TextBox)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

