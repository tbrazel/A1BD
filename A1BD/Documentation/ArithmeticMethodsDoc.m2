-- document {
--     Key => {(getSquarefreePart, QQ), (getSquarefreePart, ZZ), getSquarefreePart},
-- 	Headline => "smallest magnitude representative of a square class over the rationals or integers",
-- 	Usage => "getSquarefreePart(q)",
-- 	Inputs => {
-- 	    QQ => "q" => {"a rational number"},
-- 	    -- ZZ => "n" => {"an integer"}
-- 	    },
-- 	Outputs => {
-- 	    ZZ => { "the smallest magnitude integer in the square class of ", TT "n"}
-- 	    },
-- 	PARA {"Given a rational number (or integer), ", TT "q", ", this command outputs the smallest magnitude integer, ",
--                 TEX///$m$///, ", such that ", TEX///$q=lm$///, " for some rational number (or integer) ",
-- 				TEX///$l$///, "."},
-- 	EXAMPLE lines ///
-- 		 getSquarefreePart(15/72)
-- 		 getSquarefreePart(-1/3)
-- 	 	 ///,
--         }
    
    
-- document{
--     Key => {(getLegendreBoolean, RingElement), getLegendreBoolean},
--     Headline => "Basic Legendre symbol over a finite field",
--     Usage => "getLegendreBoolean(a)",
--     Inputs => {
-- 	RingElement => "a" => {"Any element in a finite field ", TEX///$a\in \mathbb{F}_q$///, "."},
-- 	},
--     Outputs =>{
-- 	Boolean => {"Whether ", TEX///$a$///, " is a square in ", TEX///$\mathbb{F}_q$///, "."},
-- 	},
--     PARA{"Given an element of a finite field, will return a Boolean checking if it is a square."},
--     EXAMPLE lines///
--     a = sub(-1,GF(5));
--     getLegendreBoolean(a)
--     b = sub(-1,GF(7));
--     getLegendreBoolean(b)
--     ///,
--     }

document{
    Key => {getPadicValuation, (getPadicValuation, ZZ, ZZ), (getPadicValuation, QQ, ZZ)},
    Headline => "p-adic valuation of a rational number or integer",
    Usage => "getPadicValuation(a, p)",
    Inputs => {
	ZZ => "a" => {"a non-zero rational number in ", TEX///$\mathbb{Q}_p$///},
	ZZ => "p" => {"a rational prime number"},
	},
    Outputs =>{
	ZZ => {"an integer ", TEX///$n$///, " where ",TEX///$a=p^n u$///, " and ", TEX///$u$///," is a unit in ", TEX///$\mathbb{Z}_p$///},
        },
    EXAMPLE lines///
    a = 363/7;
    getPadicValuation(a, 11)
    ///,
    }


document {
    Key => {getLocalAlgebraBasis, (getLocalAlgebraBasis, List, Ideal)},
	Headline => "produces a basis for a local finitely generated algebra over a field k",
	Usage => "getLocalAlgebraBasis(L,p)",
	Inputs => {
	    List => "L" => {"of polynomials ", TEX///$f=(f_1, \dots ,f_n)$///, " over the same ring"},
	    Ideal => "p" => {"a prime ideal of an isolated zero"}
	    },
	Outputs => {
	    List => {"of basis elements of the local ",TEX///$k$///,"-algebra ", TEX///$Q_p(f)$/// }
	    },
	PARA {"Given an endomorphism of affine space, ", TEX///$f=(f_1,\dots ,f_n)$///,
			", given as a list of polynomials called ", TT "L", " and the prime ideal of an isolated zero, this command returns a list of basis elements of the local k-algebra ", TEX///$Q_p(f)$///, " by computing a normal basis for ", TEX///$(I:(I:p^{\infty}))$///, " (vis. [S02, Proposition 2.5])."},
	EXAMPLE lines ///
		 QQ[x,y];
		 f = {x^2+1-y,y};
		 p = ideal(x^2+1,y);
		 getLocalAlgebraBasis(f,p) 
	 	 ///,
        PARA{EM "Citations:"},
    UL{
	
	{"[S02] B. Sturmfels, ", EM "Solving Systems of Polynomial Equations,", " American Mathematical Society, 2002."},
	},
    SeeAlso => {"localA1Degree"}
}
