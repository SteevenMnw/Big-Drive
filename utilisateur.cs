using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
namespace Bigdrive
{
    #region Utilisateur
    public class Utilisateur
    {
        #region Member Variables
        protected int _idutilisateur;
        protected string _identifiant;
        protected string _mdp;
        protected string _statut;
        protected int _matricule;
        #endregion
        #region Constructors
        public Utilisateur() { }
        public Utilisateur(string identifiant, string mdp, string statut, int matricule)
        {
            this._identifiant=identifiant;
            this._mdp=mdp;
            this._statut=statut;
            this._matricule=matricule;
        }
        #endregion
        #region Public Properties
        public virtual int Idutilisateur
        {
            get {return _idutilisateur;}
            set {_idutilisateur=value;}
        }
        public virtual string Identifiant
        {
            get {return _identifiant;}
            set {_identifiant=value;}
        }
        public virtual string Mdp
        {
            get {return _mdp;}
            set {_mdp=value;}
        }
        public virtual string Statut
        {
            get {return _statut;}
            set {_statut=value;}
        }
        public virtual int Matricule
        {
            get {return _matricule;}
            set {_matricule=value;}
        }
        #endregion
    }
    #endregion
}