(* :Title: Lorentz.mt														*)

(*
	This software is covered by the GNU General Public License 3.
	Copyright (C) 1990-2016 Rolf Mertig
	Copyright (C) 1997-2016 Frederik Orellana
	Copyright (C) 2014-2016 Vladyslav Shtabovenko
*)

(* :Summary:  Unit tests for functions in the "Lorentz" directory			*)

(* ------------------------------------------------------------------------ *)

Needs["FeynCalc`"];

ClearAll[tests];
tests = FileNames["*.test",FileNameJoin[{ParentDirectory@$FeynCalcDirectory, "Tests", "Lorentz"}]]
Get/@tests;

FCClearScalarProducts[];
ClearAll[xsp1,xsp2,ysp,zsp,X,abval,abval2,abval3,a,b,a1,a2,b1,b2,p,q,xxx,tmp,i,li];

Map[Test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],TestID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Lorentz`*"])];

FCClearScalarProducts[];
