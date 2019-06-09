(*
    Copyright 2018–2019 Fernando Borretti <fernando@borretti.me>

    This file is part of Austral.

    Austral is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Austral is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Austral.  If not, see <http://www.gnu.org/licenses/>.
*)

signature MODULE = sig
    type module_name = Name.module_name

    type module
    type declaration

    type menv

    val getModule : menv -> module_name -> module option
    val getDeclaration : module -> Name.ident -> declaration option

    val validateImports : Syntax.import list -> menv -> (Name.ident, module_name) Map.map
    val resolve : Syntax.module -> module
end
